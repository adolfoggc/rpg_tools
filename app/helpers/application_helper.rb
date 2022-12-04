module ApplicationHelper

  #element helpers
  def value_card(text, value, style, icon)
    html =  '<div class="col-xl-3 col-md-6 mb-4">'
    html +=   '<div class="card border-left-' + style + ' shadow h-100 py-2">'
    html +=        '<div class="card-body">'
    html +=            '<div class="row no-gutters align-items-center">'
    html +=                '<div class="col mr-2">'
    html +=                    '<div class="text-xs font-weight-bold text-' + style + ' text-uppercase mb-1">'
    html +=                        text + '</div>'
    html +=                    '<div class="h5 mb-0 font-weight-bold text-gray-800">' + value + '</div>'
    html +=                '</div>'
    html +=                '<div class="col-auto">'
    html +=                    '<i class="' + icon +' fa-2x text-gray-300"></i>'
    html +=                '</div>'
    html +=            '</div>'
    html +=        '</div>'
    html +=    '</div>'
    html +=  '</div>'
    html.html_safe 
  end

  def percentage_card(text, percentage, style, icon)
    html =  '<div class="col-xl-3 col-md-6 mb-4">'
    html +=    '<div class="card border-left-' + style + ' shadow h-100 py-2">'
    html +=        '<div class="card-body">'
    html +=            '<div class="row no-gutters align-items-center">'
    html +=                '<div class="col mr-2">'
    html +=                    '<div class="text-xs font-weight-bold text-' + style + ' text-uppercase mb-1">' + text
    html +=                    '</div>'
    html +=                    '<div class="row no-gutters align-items-center">'
    html +=                        '<div class="col-auto">'
    html +=                            '<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">' + percentage + '%</div>'
    html +=                        '</div>'
    html +=                        '<div class="col">'
    html +=                            '<div class="progress progress-sm mr-2">'
    html +=                                '<div class="progress-bar bg-info" role="progressbar"'
    html +=                                    'style="width: ' + percentage + '%" aria-valuenow="' + percentage + '" aria-valuemin="0"'
    html +=                                    'aria-valuemax="100"></div>'
    html +=                            '</div>'
    html +=                        '</div>'
    html +=                    '</div>'
    html +=                '</div>'
    html +=                '<div class="col-auto">'
    html +=                    '<i class="' + icon + ' fa-2x text-gray-300"></i>'
    html +=                '</div>'
    html +=            '</div>'
    html +=        '</div>'
    html +=    '</div>'
    html +=  '</div>'
    html.html_safe
  end

  def default_table(table_name, headers, raw_data)
    html =  '<div class="card shadow mb-4">'
    html +=    '<div class="card-header py-3">'
    html +=      '<h6 class="m-0 font-weight-bold text-primary">' + table_name + '</h6>'
    html +=    '</div>'
    html +=    '<div class="card-body">'
    html +=      '<div class="table-responsive">'
    html +=        '<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">'
    html +=          '<thead>'
    html +=            '<tr>'
    headers.each do |h|
      html +=            '<th>' + h + '</th>'
    end
    html +=            '</tr>'
    html +=          '</thead>'
    html +=          '<tfoot>'
    html +=            '<tr>'
    headers.each do |h|
      html +=            '<th>' + h + '</th>'
    end
    html +=            '</tr>'
    html +=          '</tfoot>'
    html +=          '<tbody>'
    raw_data.each do |line|
      html +=          '<tr>'
        line.each do |l|
          html +=         '<td>' + l +'</td>'
        end
      html +=          '</tr>'
    end
    html +=          '</tbody>'
    html +=        '</table>'
    html +=      '</div>'
    html +=    '</div>'
    html +=  '</div>'
    html.html_safe
  end
    
  #menu helpers
  def sidebar_element(name, icon, path)
    html =  '<li class="nav-item">'
    html +=   '<a class="nav-link" href=' + path + '>'
    html +=     '<i class="fas fa-fw ' + icon +'"></i>' #fa-table
    html +=     '<span>' + name + '</span></a>'
    html += '</li>'
    html.html_safe
  end

  def collapse_elements(name, icon, submenu_section, submenu_names, submenu_paths)
    current_collapse = collapse_count
    html =  '<li class="nav-item">'
    html +=   '<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse_' + current_collapse + '"'
    html +=     'aria-expanded="true" aria-controls="#collapse_' + current_collapse + '">'
    html +=     '<i class="fas fa-fw ' + icon + '"></i>'
    html +=     '<span>' + name + '</span>'
    html +=   '</a>'
    html +=   '<div id="collapse_' + current_collapse + '" class="collapse" aria-labelledby="heading_' + current_collapse + '" data-parent="#accordionSidebar">'
    html +=     '<div class="bg-white py-2 collapse-inner rounded">'
    submenu_section.each_with_index do |section, s| 
      html +=       '<h6 class="collapse-header">' + section + '</h6>'
                      submenu_names[s].each_with_index do |names, n|
        html +=       '<a class="collapse-item" href="' + submenu_paths[s][n] + '">' + name + '</a>'
                      end
    end
    html +=     '</div>'
    html +=   '</div>'
    html += '</li>'
    html.html_safe
  end

  def collapse_count
    @collapse += 1
    @collapse.to_s
  end
end
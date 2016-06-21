module PostsHelper


  def filter_kind_css_class(filter_kind)
    css_class = "btn btn-danger"

    # if the button is active/ selected add the class active to the button
    if filter_kind == @kind
      css_class << " active"
    end
    return css_class
  end


  def filter_category_css_class(filter_category)
    css_class = "btn btn-warning"

    # if the button is active/ selected add the class active to the button
    if filter_category == @category
      css_class << " active"
    end
    return css_class

  end
end

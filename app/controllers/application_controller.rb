class ApplicationController < ActionController::Base
    # 다운받는 파일 이름 설정하기 위해 필요
    def set_attachment_name(name)
        escaped = URI.encode(name)
        response.headers['Content-Disposition'] = "attachment; filename*=UTF-8''#{escaped}"
    end
end

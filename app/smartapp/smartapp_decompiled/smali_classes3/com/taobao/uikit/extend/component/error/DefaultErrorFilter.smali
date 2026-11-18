.class public Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;
.super Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;
.source "DefaultErrorFilter.java"


# instance fields
.field context:Landroid/content/Context;

.field filterRule:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->context:Landroid/content/Context;

    .line 29
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->filterRule:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private codeToSubTitleKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 104
    :cond_0
    invoke-virtual {p0, p2}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->isNetworkError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "errorview_networkerror_subtitle"

    return-object p1

    .line 106
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->isLimitError(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "errorview_limit_error_subtitle"

    return-object p1

    .line 109
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->isSysError(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "errorview_sys_error_subtitle"

    return-object p1

    :cond_3
    return-object v1
.end method

.method private codeToTitleKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 88
    :cond_0
    invoke-virtual {p0, p2}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->isNetworkError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "errorview_networkerror_title"

    return-object p1

    .line 91
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->isLimitError(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "errorview_limit_error_title"

    return-object p1

    .line 94
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->isSysError(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "errorview_sys_error_title"

    return-object p1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public filterIcon(Lcom/taobao/uikit/extend/component/error/Error;)I
    .locals 2
    .param p1    # Lcom/taobao/uikit/extend/component/error/Error;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    iget-object v0, p1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->isNetworkError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget p1, Lcom/taobao/uikit/extend/R$drawable;->uik_error_icon:I

    goto :goto_0

    .line 72
    :cond_0
    iget v0, p1, Lcom/taobao/uikit/extend/component/error/Error;->responseCode:I

    iget-object v1, p1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->isLimitError(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget p1, Lcom/taobao/uikit/extend/R$drawable;->uik_limit_error_icon:I

    goto :goto_0

    .line 76
    :cond_1
    iget v0, p1, Lcom/taobao/uikit/extend/component/error/Error;->responseCode:I

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->isSysError(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    sget p1, Lcom/taobao/uikit/extend/R$drawable;->uik_sys_error_icon:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public filterSubTitle(Lcom/taobao/uikit/extend/component/error/Error;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/taobao/uikit/extend/component/error/Error;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 54
    :goto_0
    iget v0, p1, Lcom/taobao/uikit/extend/component/error/Error;->responseCode:I

    iget-object v1, p1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->codeToSubTitleKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget v0, p1, Lcom/taobao/uikit/extend/component/error/Error;->responseCode:I

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->codeToSubTitleKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->filterRule:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, p2

    :cond_2
    return-object p1
.end method

.method public filterTitle(Lcom/taobao/uikit/extend/component/error/Error;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/taobao/uikit/extend/component/error/Error;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 41
    :goto_0
    iget v0, p1, Lcom/taobao/uikit/extend/component/error/Error;->responseCode:I

    iget-object v1, p1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->codeToTitleKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget v0, p1, Lcom/taobao/uikit/extend/component/error/Error;->responseCode:I

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->codeToTitleKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;->filterRule:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, p2

    :cond_2
    return-object p1
.end method

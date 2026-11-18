.class public abstract Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;
.super Ljava/lang/Object;
.source "AbsErrorFilter.java"


# static fields
.field static final KEY_ERRORVIEW_LIMIT_ERROR_SUBTITLE:Ljava/lang/String; = "errorview_limit_error_subtitle"

.field static final KEY_ERRORVIEW_LIMIT_ERROR_TITLE:Ljava/lang/String; = "errorview_limit_error_title"

.field static final KEY_ERRORVIEW_NETWORKERROR_SUBTITLE:Ljava/lang/String; = "errorview_networkerror_subtitle"

.field static final KEY_ERRORVIEW_NETWORKERROR_TITLE:Ljava/lang/String; = "errorview_networkerror_title"

.field static final KEY_ERRORVIEW_SYS_ERROR_SUBTITLE:Ljava/lang/String; = "errorview_sys_error_subtitle"

.field static final KEY_ERRORVIEW_SYS_ERROR_TITLE:Ljava/lang/String; = "errorview_sys_error_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private isLimitErrorByRetCode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public abstract filterIcon(Lcom/taobao/uikit/extend/component/error/Error;)I
    .param p1    # Lcom/taobao/uikit/extend/component/error/Error;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract filterSubTitle(Lcom/taobao/uikit/extend/component/error/Error;Ljava/lang/CharSequence;)Ljava/lang/String;
    .param p1    # Lcom/taobao/uikit/extend/component/error/Error;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract filterTitle(Lcom/taobao/uikit/extend/component/error/Error;Ljava/lang/CharSequence;)Ljava/lang/String;
    .param p1    # Lcom/taobao/uikit/extend/component/error/Error;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected isHttpError(I)Z
    .locals 1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x190

    if-eq p1, v0, :cond_1

    const/16 v0, 0x191

    if-eq p1, v0, :cond_1

    const/16 v0, 0x193

    if-eq p1, v0, :cond_1

    const/16 v0, 0x194

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x257

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isLimitError(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x1a3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a4

    if-eq p1, v0, :cond_1

    .line 91
    invoke-direct {p0, p2}, Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;->isLimitErrorByRetCode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isNetworkError(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ANDROID_SYS_NO_NETWORK"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ANDROID_SYS_NETWORK_ERROR"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isSysError(ILjava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FAIL_SYS"

    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FAIL"

    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UNKNOWN_ERROR"

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SYSTEM_ERROR"

    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UNKNOWN_FAIL_CODE"

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ANDROID_SYS"

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;->isHttpError(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

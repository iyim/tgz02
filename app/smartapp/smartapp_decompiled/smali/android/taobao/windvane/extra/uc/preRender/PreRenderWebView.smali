.class public Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;
.super Landroid/taobao/windvane/extra/uc/WVUCWebView;
.source "PreRenderWebView.java"

# interfaces
.implements Landroid/taobao/windvane/webview/IPreRenderWebView;


# instance fields
.field private expireTime:J

.field public isPreLoad:Z

.field private preRenderSuccess:Z

.field private realUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->isPreLoad:Z

    .line 13
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->preRenderSuccess:Z

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->expireTime:J

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->realUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->isPreLoad:Z

    .line 13
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->preRenderSuccess:Z

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->expireTime:J

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->realUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->isPreLoad:Z

    .line 13
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->preRenderSuccess:Z

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->expireTime:J

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->realUrl:Ljava/lang/String;

    return-void
.end method

.method private getAttachData()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->realUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ \"url\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->realUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    .line 78
    iget-wide v0, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->expireTime:J

    return-wide v0
.end method

.method public isPreLoad()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->isPreLoad:Z

    return v0
.end method

.method public isPreRenderSuccess()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->preRenderSuccess:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onAttachedToWindow()V

    .line 48
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->isPreLoad:Z

    if-eqz v0, :cond_1

    .line 49
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->getAttachData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WV.Event.Preload.Attach"

    invoke-virtual {p0, v1, v0}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;)V

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->isPreLoad:Z

    :cond_1
    return-void
.end method

.method public preRenderInit(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setExpireTime(J)V
    .locals 0

    .line 83
    iput-wide p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->expireTime:J

    return-void
.end method

.method public setPreRenderSuccess(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->preRenderSuccess:Z

    return-void
.end method

.method setRealUrl(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->realUrl:Ljava/lang/String;

    return-void
.end method

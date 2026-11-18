.class public Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;
.super Ljava/lang/Object;
.source "WebLoadListener.java"

# interfaces
.implements Lcom/taobao/vessel/callback/OnLoadListener;


# instance fields
.field private mBizName:Ljava/lang/String;

.field private mPageUrl:Ljava/lang/String;

.field private mWebMaskView:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/web/WebMaskView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mWebMaskView:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    .line 22
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mPageUrl:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mBizName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mBizName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onDowngrade(Lcom/taobao/vessel/model/VesselError;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/vessel/model/VesselError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onLoadError(Lcom/taobao/vessel/model/VesselError;)V
    .locals 10

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mWebMaskView:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->getVesselView()Lcom/taobao/vessel/VesselView;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;-><init>(Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;Lcom/taobao/vessel/VesselView;)V

    invoke-virtual {v0, v1}, Lcom/taobao/vessel/VesselView;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mBizName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/taobao/vessel/model/VesselError;->errorCode:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mPageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/taobao/vessel/model/VesselError;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v2, "vesselLoadFailure"

    const-string v3, "WebLoadListener"

    const-string v4, "1.0"

    invoke-static/range {v2 .. v9}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFinish(Landroid/view/View;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mWebMaskView:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->finish()V

    .line 38
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mWebMaskView:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->getVesselView()Lcom/taobao/vessel/VesselView;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mWebMaskView:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    invoke-virtual {p1, v0}, Lcom/taobao/vessel/VesselView;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onLoadStart()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mWebMaskView:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->bringToFront()V

    .line 30
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->mWebMaskView:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->startLoading()V

    :cond_0
    return-void
.end method

.class Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;
.super Ljava/lang/Object;
.source "WebLoadListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->onLoadError(Lcom/taobao/vessel/model/VesselError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;

.field final synthetic val$mVesselView:Lcom/taobao/vessel/VesselView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;Lcom/taobao/vessel/VesselView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;->this$0:Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;->val$mVesselView:Lcom/taobao/vessel/VesselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;->val$mVesselView:Lcom/taobao/vessel/VesselView;

    invoke-virtual {v0}, Lcom/taobao/vessel/VesselView;->removeAllViews()V

    .line 51
    new-instance v0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;->val$mVesselView:Lcom/taobao/vessel/VesselView;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;->this$0:Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;

    invoke-static {v2}, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->access$000(Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;-><init>(Lcom/taobao/vessel/VesselView;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;->val$mVesselView:Lcom/taobao/vessel/VesselView;

    new-instance v2, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;->this$0:Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;

    invoke-static {v3}, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->access$000(Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener$1;->this$0:Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;

    invoke-static {v4}, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;->access$100(Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;-><init>(Lcom/alibaba/android/ultron/vfw/web/WebMaskView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/taobao/vessel/VesselView;->setOnLoadListener(Lcom/taobao/vessel/callback/OnLoadListener;)V

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->setErrorTextVisible(Z)V

    return-void
.end method

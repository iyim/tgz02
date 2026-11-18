.class Lcom/alibaba/android/ultron/vfw/web/WebMaskView$1;
.super Ljava/lang/Object;
.source "WebMaskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->loadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/web/WebMaskView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView$1;->this$0:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView$1;->this$0:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->access$000(Lcom/alibaba/android/ultron/vfw/web/WebMaskView;)Lcom/taobao/vessel/VesselView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView$1;->this$0:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->access$000(Lcom/alibaba/android/ultron/vfw/web/WebMaskView;)Lcom/taobao/vessel/VesselView;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView$1;->this$0:Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->access$100(Lcom/alibaba/android/ultron/vfw/web/WebMaskView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/vessel/VesselView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

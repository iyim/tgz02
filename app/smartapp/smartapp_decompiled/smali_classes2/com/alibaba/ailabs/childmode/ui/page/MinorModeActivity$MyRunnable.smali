.class Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;
.super Ljava/lang/Object;
.source "MinorModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyRunnable"
.end annotation


# instance fields
.field private activity:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;

.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;)Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;->activity:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;->activity:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;->activity:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x43680000    # 232.0f

    .line 161
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 163
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v0, v2}, Lcom/alibaba/ailabs/childmode/ui/utils/QRCodeManager;->create2DCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;->activity:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->access$300(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MinorModeActivityTag"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

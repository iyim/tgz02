.class Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable$1;
.super Ljava/lang/Object;
.source "MinorModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;

.field final synthetic val$bp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;

    iput-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable$1;->val$bp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;->access$100(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;)Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->access$200(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;->access$100(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable;)Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->access$200(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$MyRunnable$1;->val$bp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

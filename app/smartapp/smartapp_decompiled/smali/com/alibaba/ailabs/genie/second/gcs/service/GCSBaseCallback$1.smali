.class Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback$1;
.super Ljava/lang/Object;
.source "GCSBaseCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$method:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;ILandroid/os/Bundle;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;

    iput p2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback$1;->val$method:I

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback$1;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;

    iget v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback$1;->val$method:I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback$1;->val$data:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->access$000(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;ILandroid/os/Bundle;)V

    return-void
.end method

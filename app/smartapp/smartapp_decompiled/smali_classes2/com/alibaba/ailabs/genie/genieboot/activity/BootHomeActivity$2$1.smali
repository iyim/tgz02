.class Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2$1;
.super Ljava/lang/Object;
.source "BootHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$500(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Ljava/lang/String;)V

    return-void
.end method

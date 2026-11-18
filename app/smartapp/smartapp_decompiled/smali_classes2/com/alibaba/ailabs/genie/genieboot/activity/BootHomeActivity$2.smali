.class Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;
.super Ljava/lang/Object;
.source "BootHomeActivity.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->updateImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 276
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$300(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/genieboot/R$drawable;->boot_view_background:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLoadFailed mRetryTime :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$400(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BootHomeActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$400(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)J

    move-result-wide p1

    const-wide/16 p3, 0x3

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 279
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$408(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)J

    .line 280
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$600(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2$1;-><init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    const-string p1, "BootHomeActivity"

    const-string p2, "onResourceReady"

    .line 292
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 273
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$2;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method

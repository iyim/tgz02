.class Lcom/alibaba/ailabs/genie/image/GenieGlideUtil$1;
.super Ljava/lang/Object;
.source "GenieGlideUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->clearCacheDiskSelf(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;Landroid/content/Context;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil$1;->this$0:Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearDiskCache()V

    return-void
.end method

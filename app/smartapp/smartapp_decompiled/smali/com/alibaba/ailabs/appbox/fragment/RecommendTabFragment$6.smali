.class Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$6;
.super Ljava/lang/Object;
.source "RecommendTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->updateCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

.field final synthetic val$cache:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$6;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$6;->val$cache:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$6;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 484
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/cache/ACache;->get(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/utils/cache/ACache;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$6;->val$cache:Ljava/lang/String;

    const v3, 0x93a80

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/utils/cache/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

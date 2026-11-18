.class Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$2;
.super Ljava/lang/Object;
.source "RecommendTabFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$2;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/cache/ACache;->get(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/utils/cache/ACache;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/cache/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

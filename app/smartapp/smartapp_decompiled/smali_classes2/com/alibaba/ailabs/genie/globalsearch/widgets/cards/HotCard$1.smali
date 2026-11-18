.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$1;
.super Ljava/lang/Object;
.source "HotCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->lambda$getGroupInfo$1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hotList"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

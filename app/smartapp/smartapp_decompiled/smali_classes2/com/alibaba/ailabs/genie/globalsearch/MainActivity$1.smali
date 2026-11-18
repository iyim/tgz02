.class Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->initSearchHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditFocused(Z)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->loading:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->access$000(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setTabListVisible(Z)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->setContentViewVisible(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 97
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "input_box"

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setPageState(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V

    .line 99
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->cancelAutoJump()V

    :cond_1
    return-void
.end method

.method public onSearchByString(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchByString(Ljava/lang/String;)V

    return-void
.end method

.method public onTabClicked(Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;)V
    .locals 2

    .line 110
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->cancelAutoJump()V

    .line 112
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setTabName(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->getDomain()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchByDomain(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

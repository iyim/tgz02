.class Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$ChildAppMarketOnTabSelector;
.super Ljava/lang/Object;
.source "ChildAppMarketActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildAppMarketOnTabSelector"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildAppMarketOnTabSelector"


# instance fields
.field private tabLayout:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$ChildAppMarketOnTabSelector;->tabLayout:Landroid/support/design/widget/TabLayout;

    return-void
.end method

.method private setTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTab() called with: tab = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], isBold = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildAppMarketOnTabSelector"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$ChildAppMarketOnTabSelector;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 216
    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabReselected() called with: tab = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChildAppMarketOnTabSelector"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    const/4 v0, 0x1

    .line 200
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$ChildAppMarketOnTabSelector;->setTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$ChildAppMarketOnTabSelector;->setTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

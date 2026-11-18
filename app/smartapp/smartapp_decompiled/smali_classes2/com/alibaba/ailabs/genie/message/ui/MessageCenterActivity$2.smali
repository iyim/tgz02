.class Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$2;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->tayLayoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 137
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 139
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->tv_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/message/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41d00000    # 26.0f

    .line 141
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 146
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 148
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->tv_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/message/R$color;->tab_title_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41c00000    # 24.0f

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

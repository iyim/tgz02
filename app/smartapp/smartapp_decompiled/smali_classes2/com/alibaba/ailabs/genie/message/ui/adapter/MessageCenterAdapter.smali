.class public Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MessageCenterAdapter.java"


# static fields
.field private static final TAB_TITLES:[I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# instance fields
.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [I

    sget v1, Lcom/alibaba/ailabs/genie/message/R$string;->tab_text_1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/genie/message/R$string;->tab_text_2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;->TAB_TITLES:[I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;->fragments:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 53
    sget-object v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;->TAB_TITLES:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;->TAB_TITLES:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/message/R$layout;->red_dot_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->tv_tab_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    sget-object v2, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageCenterAdapter;->TAB_TITLES:[I

    aget p1, v2, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    return-object v0
.end method

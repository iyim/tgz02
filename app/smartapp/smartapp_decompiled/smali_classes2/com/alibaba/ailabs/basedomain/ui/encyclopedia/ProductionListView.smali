.class public Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;
.super Landroid/widget/HorizontalScrollView;
.source "ProductionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$MyOnCommandListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ProductionListView"

.field private static final TYPE_ICON_MUSIC:I = 0x1

.field private static final TYPE_ICON_VIDEO:I = 0x2


# instance fields
.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private icons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCommandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field mListener:Landroid/view/View$OnClickListener;

.field mMainHandler:Landroid/os/Handler;

.field private mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

.field private mOnCommandListener:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$MyOnCommandListener;

.field private mSelectData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private productions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private utEventName:Ljava/lang/String;

.field private utPageName:Ljava/lang/String;

.field private utSpm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->datas:Ljava/util/ArrayList;

    .line 50
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mSelectData:Ljava/util/HashMap;

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCommandList:Ljava/util/ArrayList;

    .line 53
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mMainHandler:Landroid/os/Handler;

    .line 175
    new-instance p2, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mListener:Landroid/view/View$OnClickListener;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_encyclopedia_production_list:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->icon1:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->icon2:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->icon3:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->icon4:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->icon5:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->name1:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->name2:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->name3:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->name4:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->name5:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->production1:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->production2:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->production3:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->production4:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->production5:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$MyOnCommandListener;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$MyOnCommandListener;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mOnCommandListener:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$MyOnCommandListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->datas:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->jumpToMusicOrVideo(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->utEventName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->utSpm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->utPageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->onSelectContent(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private addProduction(ILjava/lang/Object;)V
    .locals 5

    .line 224
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 225
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProduction too many type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "\u64ad\u653e"

    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    if-nez v0, :cond_1

    .line 230
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/basedomain/R$drawable;->encyclopedia_domain_flag_audio_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 231
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mSelectData:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u4ee3\u8868\u4f5c"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    iget v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u64ad\u653e\u4ee3\u8868\u4f5c"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    sget-object p1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addProduction TYPE_ICON_MUSIC \u64ad\u653e\u4ee3\u8868\u4f5c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->datas:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 236
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 237
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 238
    iget p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    goto/16 :goto_0

    .line 240
    :cond_1
    move-object p1, p2

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    .line 241
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addProduction TYPE_ICON_MUSIC musicListItem\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mSelectData:Ljava/util/HashMap;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->getame()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v3, Lcom/alibaba/ailabs/basedomain/R$drawable;->encyclopedia_domain_flag_audio_icon:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->getame()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->datas:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 247
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 248
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 249
    iget p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 253
    move-object p1, p2

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    .line 254
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addProduction TYPE_ICON_VIDEO videoListItem\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mSelectData:Ljava/util/HashMap;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v3, Lcom/alibaba/ailabs/basedomain/R$drawable;->encyclopedia_domain_flag_video_icon:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->datas:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 260
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 261
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 262
    iget p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    :cond_3
    :goto_0
    return-void
.end method

.method private fillMusic(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->encyclopedia_domain_flag_audio_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u64ad\u653e\u4ee3\u8868\u4f5c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 191
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->size()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->encyclopedia_domain_flag_audio_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 193
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_1

    .line 194
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->getame()Ljava/lang/String;

    move-result-object v1

    .line 195
    :goto_1
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u64ad\u653e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillMusicAndVideo(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;)V
    .locals 7

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->addProduction(ILjava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->size()I

    move-result v2

    :goto_0
    if-nez p2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->size()I

    move-result v3

    :goto_1
    const/4 v4, 0x1

    .line 207
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_5

    if-eqz p2, :cond_3

    add-int/lit8 v5, v4, -0x1

    .line 208
    invoke-virtual {p2, v5}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    .line 209
    invoke-virtual {p2, v5}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->addProduction(ILjava/lang/Object;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 211
    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 212
    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->addProduction(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 215
    :cond_5
    :goto_3
    iget p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    if-ge v0, p1, :cond_6

    .line 216
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 218
    :cond_6
    :goto_4
    iget p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    if-ge p1, v6, :cond_7

    .line 219
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->productions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCurrentIndex:I

    goto :goto_4

    :cond_7
    return-void
.end method

.method private fillVideo(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 121
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->size()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->icons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->encyclopedia_domain_flag_video_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_1
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->titles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u64ad\u653e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private jumpToMusicOrVideo(Ljava/lang/Object;)V
    .locals 5

    .line 131
    instance-of v0, p1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    const-string v1, "android.intent.action.VIEW"

    if-eqz v0, :cond_0

    .line 132
    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->getSwapedJsonList(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;)Lorg/json/JSONArray;

    move-result-object p1

    .line 134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, ""

    :try_start_0
    const-string v3, "type"

    const-string v4, "raw"

    .line 137
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "rawList"

    .line 138
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string p1, "utf-8"

    .line 140
    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    sget-object p1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpToMusicOrVideo music: object json:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "genie://com.alibaba.ailabs.genie.musicplayer?cmd=start&data="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 146
    :catch_0
    sget-object p1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No activity to handle this intent, jsonString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_0
    instance-of v0, p1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;

    if-eqz v0, :cond_2

    .line 149
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    const-string v2, "jumpToMusicOrVideo VideoList.VideoListItem"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    nop

    nop

    .line 151
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpToMusicOrVideo VideoList.VideoListItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList$VideoListItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 159
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jump to youku url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 162
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 163
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    const-string v1, "No activity to handle this intent"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 170
    :catch_1
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open url failed, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onSelectContent(Ljava/lang/String;)V
    .locals 5

    .line 308
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->getSelectContentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    sget-object v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectContent, e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 315
    :goto_0
    sget-object v2, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSelectContent val:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " args:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->datas:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 318
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->jumpToMusicOrVideo(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setSelectListData()V
    .locals 5

    .line 269
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v1, "video.research"

    .line 270
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 271
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mSelectData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 272
    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;-><init>()V

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->setSelectKey(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mSelectData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->addSelectValue(Ljava/lang/String;)V

    const-string v3, "content"

    .line 275
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->addSelectData(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v1

    const-string v2, "488a7efa-40a2-4f4c-a0de-0cc95851ad9e"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->setSelectListData(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCommandList:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->unregisterCommandListener(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public setData(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;)V
    .locals 3

    .line 92
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData, musicList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " videoList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mSelectData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->fillMusicAndVideo(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;)V

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCommandList:Ljava/util/ArrayList;

    const-string p2, "SelectContent"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->setSelectListData()V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mOnCommandListener:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$MyOnCommandListener;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mCommandList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->mMainHandler:Landroid/os/Handler;

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->registerCommandListener(Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x8

    .line 95
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->utPageName:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->utEventName:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->utSpm:Ljava/lang/String;

    return-void
.end method

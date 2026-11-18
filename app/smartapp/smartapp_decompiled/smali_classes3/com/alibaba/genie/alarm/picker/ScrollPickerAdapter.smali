.class public Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ScrollPickerAdapter.java"

# interfaces
.implements Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$DefaultItemViewProvider;,
        Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;,
        Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;,
        Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;,
        Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;",
        ">;",
        "Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLineColor:I

.field private mOnItemClickListener:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;

.field private mOnScrollListener:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;

.field private mSelectedItemOffset:I

.field private mViewProvider:Lcom/alibaba/genie/alarm/picker/IViewProvider;

.field private mVisibleItemNum:I

.field private maxItemH:I

.field private maxItemW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x3

    .line 24
    iput v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mVisibleItemNum:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->maxItemH:I

    .line 28
    iput v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->maxItemW:I

    .line 31
    iput-object p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mContext:Landroid/content/Context;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mOnItemClickListener:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mOnItemClickListener:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mSelectedItemOffset:I

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mSelectedItemOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mVisibleItemNum:I

    return p0
.end method

.method static synthetic access$502(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mVisibleItemNum:I

    return p1
.end method

.method static synthetic access$602(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;Lcom/alibaba/genie/alarm/picker/IViewProvider;)Lcom/alibaba/genie/alarm/picker/IViewProvider;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mViewProvider:Lcom/alibaba/genie/alarm/picker/IViewProvider;

    return-object p1
.end method

.method static synthetic access$702(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mLineColor:I

    return p1
.end method

.method static synthetic access$802(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mOnScrollListener:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;

    return-object p1
.end method

.method private adaptiveItemViewSize(Landroid/view/View;)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 88
    iget v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->maxItemH:I

    if-le v0, v1, :cond_0

    .line 89
    iput v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->maxItemH:I

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 93
    iget v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->maxItemW:I

    if-le v0, v1, :cond_1

    .line 94
    iput v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->maxItemW:I

    .line 97
    :cond_1
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->maxItemH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 98
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->maxItemW:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLineColor()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mLineColor:I

    return v0
.end method

.method public getSelectedItemOffset()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mSelectedItemOffset:I

    return v0
.end method

.method public getVisibleItemNumber()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mVisibleItemNum:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    check-cast p1, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->onBindViewHolder(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;I)V
    .locals 2
    .param p1    # Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mViewProvider:Lcom/alibaba/genie/alarm/picker/IViewProvider;

    invoke-static {p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;->access$100(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/alarm/picker/IViewProvider;->onBindView(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 38
    iget-object p2, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mViewProvider:Lcom/alibaba/genie/alarm/picker/IViewProvider;

    if-nez p2, :cond_0

    .line 39
    new-instance p2, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$DefaultItemViewProvider;

    invoke-direct {p2}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$DefaultItemViewProvider;-><init>()V

    iput-object p2, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mViewProvider:Lcom/alibaba/genie/alarm/picker/IViewProvider;

    .line 41
    :cond_0
    new-instance p2, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;

    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mViewProvider:Lcom/alibaba/genie/alarm/picker/IViewProvider;

    invoke-interface {v1}, Lcom/alibaba/genie/alarm/picker/IViewProvider;->resLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;-><init>(Landroid/view/View;Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$1;)V

    return-object p2
.end method

.method public updateView(Landroid/view/View;Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mViewProvider:Lcom/alibaba/genie/alarm/picker/IViewProvider;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/alarm/picker/IViewProvider;->updateView(Landroid/view/View;Z)V

    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->adaptiveItemViewSize(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->mOnScrollListener:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;->onScrolled(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 76
    new-instance p2, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$1;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$1;-><init>(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

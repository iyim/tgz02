.class public Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;
.super Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;
.source "LayoutRelationshipItemBindingImpl.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0902e4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090363

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 120
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 37
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 38
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 8

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 96
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mRelationship:Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3

    and-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_0
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->tvRelationship:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 97
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 57
    monitor-exit p0

    return v0

    .line 59
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 47
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 48
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mDirtyFlags:J

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 49
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setRelationship(Lcom/alibaba/ailabs/genie/contacts/model/Relationship;)V
    .locals 4
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/model/Relationship;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mRelationship:Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 80
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->notifyPropertyChanged(I)V

    .line 81
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 79
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 67
    check-cast p2, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;->setRelationship(Lcom/alibaba/ailabs/genie/contacts/model/Relationship;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

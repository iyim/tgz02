.class public Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;
.super Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;
.source "LayoutContactsInfoBindingImpl.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->mapBindings(Landroid/databinding/DataBindingComponent;[Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x0

    .line 28
    aget-object v3, p2, v0

    const/4 v1, 0x6

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    move-object v11, p3

    check-cast v11, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 92
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->mDirtyFlags:J

    .line 37
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->btnEdit:Landroid/widget/Button;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->btnMobile:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->etName:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->ivAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->switchBlock:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->switchMember:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->mDirtyFlags:J

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 61
    monitor-exit p0

    return v0

    .line 63
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

    .line 51
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 52
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 53
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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

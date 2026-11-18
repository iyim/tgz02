.class public Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;
.super Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;
.source "TabContactsBindingImpl.java"


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
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090120

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09084f

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090445

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090441

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090440

    const/4 v2, 0x5

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

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x0

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/support/constraint/ConstraintLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    move-object v10, p3

    check-cast v10, Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;Landroid/widget/ImageView;Landroid/support/constraint/ConstraintLayout;Landroid/widget/ImageView;Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;)V

    const-wide/16 v0, -0x1

    .line 100
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->mDirtyFlags:J

    .line 41
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->contactsLayout:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->mDirtyFlags:J

    .line 94
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

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 59
    monitor-exit p0

    return v0

    .line 61
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

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 50
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 51
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

.method public setContactsitem(Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;)V
    .locals 0
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->mContactsitem:Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 69
    check-cast p2, Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;->setContactsitem(Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

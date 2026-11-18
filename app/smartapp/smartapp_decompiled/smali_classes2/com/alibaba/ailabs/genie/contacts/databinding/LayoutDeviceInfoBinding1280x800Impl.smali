.class public Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;
.super Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;
.source "LayoutDeviceInfoBinding1280x800Impl.java"


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
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->mapBindings(Landroid/databinding/DataBindingComponent;[Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x0

    .line 28
    aget-object v3, p2, v0

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    move-object v8, p3

    check-cast v8, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 86
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->mDirtyFlags:J

    .line 34
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->btnEdit:Landroid/widget/Button;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->etName:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->ivAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->setRootTag([Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->mDirtyFlags:J

    .line 80
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

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    return v0

    .line 57
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

    .line 45
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 46
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
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

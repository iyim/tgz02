.class public Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;
.super Landroid/databinding/ViewDataBinding;
.source "CustomSelectItemLayoutBinding.java"


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
.field public final avatar:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final contactsItem:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final index:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final indexCount:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContact:Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDirtyFlags:J

.field public final nickName:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090283

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090289

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 176
    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mDirtyFlags:J

    .line 40
    sget-object v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    .line 41
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->avatar:Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->avatar:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->contactsItem:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->contactsItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->index:Landroid/widget/ImageView;

    const/4 v0, 0x4

    .line 46
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->indexCount:Landroid/widget/TextView;

    const/4 v0, 0x2

    .line 47
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->nickName:Landroid/widget/TextView;

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->setRootTag(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 196
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "layout/custom_select_item_layout_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view tag isn\'t correct on view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 188
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b009b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 180
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b009b

    .line 184
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 17

    move-object/from16 v1, p0

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v2, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 109
    iput-wide v4, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mDirtyFlags:J

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mContact:Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    const/4 v10, 0x2

    const-wide/16 v11, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x0

    cmp-long v15, v8, v4

    if-eqz v15, :cond_4

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->getNickName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v14

    :goto_0
    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-le v15, v10, :cond_2

    const/4 v13, 0x1

    :cond_2
    cmp-long v16, v8, v4

    if-eqz v16, :cond_5

    if-eqz v13, :cond_3

    or-long/2addr v2, v11

    goto :goto_2

    :cond_3
    const-wide/16 v8, 0x4

    or-long/2addr v2, v8

    goto :goto_2

    :cond_4
    move-object v0, v14

    const/4 v15, 0x0

    :cond_5
    :goto_2
    and-long v8, v2, v11

    cmp-long v11, v8, v4

    if-eqz v11, :cond_6

    sub-int/2addr v15, v10

    if-eqz v0, :cond_6

    .line 156
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_6
    move-object v8, v14

    :goto_3
    and-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    if-eqz v13, :cond_7

    move-object v14, v8

    goto :goto_4

    :cond_7
    move-object v14, v0

    :cond_8
    :goto_4
    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    .line 169
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->avatar:Landroid/widget/TextView;

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->nickName:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 110
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getContact()Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mContact:Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 66
    monitor-exit p0

    return v0

    .line 68
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

    .line 56
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 57
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mDirtyFlags:J

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 58
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

.method public setContact(Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;)V
    .locals 4
    .param p1    # Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mContact:Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->mDirtyFlags:J

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 89
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->notifyPropertyChanged(I)V

    .line 90
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 88
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

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 76
    check-cast p2, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->setContact(Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

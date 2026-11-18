.class public Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ContactsItemLayoutBinding.java"


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
.field public final contactsAvatar:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final contactsItem:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final contactsName:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final contactsNickname:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final contactsVideoIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDevice:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDirtyFlags:J

.field private mType:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final newComeinImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final newComeinText:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09011a

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090124

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090432

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090433

    const/4 v2, 0x6

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

    .line 49
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 243
    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    .line 50
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    invoke-static {p1, p2, v3, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x3

    .line 51
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsAvatar:Landroid/widget/ImageView;

    .line 52
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsItem:Landroid/widget/RelativeLayout;

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsItem:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 54
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsName:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 56
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsNickname:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsNickname:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 58
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsVideoIcon:Landroid/widget/ImageView;

    const/4 v0, 0x5

    .line 59
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinImage:Landroid/widget/ImageView;

    const/4 v0, 0x6

    .line 60
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinText:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->setRootTag(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 263
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;
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

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "layout/contacts_item_layout_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    .line 268
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 255
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;
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

    const v0, 0x7f0b0090

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 259
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;
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

    .line 247
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;
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

    const v0, 0x7f0b0090

    .line 251
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 22

    move-object/from16 v1, p0

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide v2, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 151
    iput-wide v4, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    .line 161
    iget-object v6, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDevice:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    .line 163
    iget-object v7, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mType:Ljava/lang/Integer;

    const-wide/16 v8, 0xf

    and-long v10, v2, v8

    const-wide/16 v12, 0x40

    const-wide/16 v14, 0x80

    const-wide/16 v16, 0x10

    const-wide/16 v18, 0x20

    const/16 v20, 0x0

    cmp-long v21, v10, v4

    if-eqz v21, :cond_2

    .line 170
    invoke-static {v7}, Landroid/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    const/16 v20, 0x1

    :cond_0
    cmp-long v7, v10, v4

    if-eqz v7, :cond_2

    if-eqz v20, :cond_1

    or-long v2, v2, v18

    or-long/2addr v2, v14

    goto :goto_0

    :cond_1
    or-long v2, v2, v16

    or-long/2addr v2, v12

    :cond_2
    :goto_0
    const-wide/16 v10, 0xa0

    and-long/2addr v10, v2

    const/4 v7, 0x0

    cmp-long v21, v10, v4

    if-eqz v21, :cond_5

    and-long v10, v2, v18

    cmp-long v18, v10, v4

    if-eqz v18, :cond_3

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    move-object v10, v7

    :goto_1
    and-long/2addr v14, v2

    cmp-long v11, v14, v4

    if-eqz v11, :cond_4

    if-eqz v0, :cond_4

    .line 202
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v7

    goto :goto_2

    :cond_5
    move-object v0, v7

    move-object v10, v0

    :goto_2
    const-wide/16 v14, 0x50

    and-long/2addr v14, v2

    cmp-long v11, v14, v4

    if-eqz v11, :cond_8

    and-long v14, v2, v16

    cmp-long v11, v14, v4

    if-eqz v11, :cond_6

    if-eqz v6, :cond_6

    .line 213
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_6
    move-object v11, v7

    :goto_3
    and-long/2addr v12, v2

    cmp-long v14, v12, v4

    if-eqz v14, :cond_7

    if-eqz v6, :cond_7

    .line 220
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getPosition()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    move-object v6, v7

    goto :goto_4

    :cond_8
    move-object v6, v7

    move-object v11, v6

    :goto_4
    and-long/2addr v2, v8

    cmp-long v8, v2, v4

    if-eqz v8, :cond_b

    if-eqz v20, :cond_9

    move-object v7, v10

    goto :goto_5

    :cond_9
    move-object v7, v11

    :goto_5
    if-eqz v20, :cond_a

    goto :goto_6

    :cond_a
    move-object v0, v6

    goto :goto_6

    :cond_b
    move-object v0, v7

    :goto_6
    cmp-long v6, v2, v4

    if-eqz v6, :cond_c

    .line 236
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsName:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsNickname:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 152
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getContacts()Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-object v0
.end method

.method public getDevice()Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDevice:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mType:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 78
    monitor-exit p0

    return v0

    .line 80
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

    .line 68
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 69
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 70
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

.method public setContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 4
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x8

    .line 107
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDevice(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V
    .locals 4
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 115
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDevice:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

    .line 119
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->notifyPropertyChanged(I)V

    .line 120
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 4
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mType:Ljava/lang/Integer;

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->mDirtyFlags:J

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 131
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->notifyPropertyChanged(I)V

    .line 132
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 130
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

    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 88
    check-cast p2, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->setContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 91
    check-cast p2, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->setDevice(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne v0, p1, :cond_2

    .line 94
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->setType(Ljava/lang/Integer;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

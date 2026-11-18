.class public Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;
.super Lcom/alibaba/ailabs/genie/contacts/adapter/BaseAdapter;
.source "ContactsItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/adapter/BaseAdapter<",
        "Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;",
        "Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_ContactsItemAdapter"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindVH$50$ContactsItemAdapter(Landroid/view/View;)V
    .locals 2

    .line 55
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onBindVH$51$ContactsItemAdapter(Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Landroid/view/View;)V
    .locals 2

    .line 93
    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isSelf()Z

    move-result p1

    const-string v0, "mode"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 95
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 97
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getOutUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "contactId"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onBindVH$52$ContactsItemAdapter(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;Landroid/view/View;)V
    .locals 2

    .line 120
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "mode"

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "contactId"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onBindVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->onBindVH(Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;I)V

    return-void
.end method

.method public onBindVH(Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;I)V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 48
    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getItemType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->setType(Ljava/lang/Integer;)V

    .line 50
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->setDevice(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    .line 51
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->executePendingBindings()V

    .line 52
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsNickname:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$color;->contacts_gray_color:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsAvatar:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->add_contacts_110:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsAvatar:Landroid/widget/ImageView;

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$c0IAICRKISVjHwwSPuCZib8cycE;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$c0IAICRKISVjHwwSPuCZib8cycE;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;->getItemType()I

    move-result p2

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez p2, :cond_5

    .line 62
    move-object p2, v0

    check-cast p2, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    .line 63
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getOutUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getOutUserId()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getOwnerUserId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getOwnerUserId()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isSelf()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinImage:Landroid/widget/ImageView;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->mine:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinText:Landroid/widget/TextView;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_mine:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isNewImport()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinImage:Landroid/widget/ImageView;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->new_comein_tag:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinText:Landroid/widget/TextView;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_new_comein:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 75
    :cond_3
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getVideo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsVideoIcon:Landroid/widget/ImageView;

    sget-object v3, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_VIDEO_ICON_VECTOR:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->loadVector(Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 82
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 84
    :cond_4
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :goto_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getItemType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->setType(Ljava/lang/Integer;)V

    .line 88
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->setContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->executePendingBindings()V

    .line 90
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsAvatar:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getAvatar()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_110:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 92
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsAvatar:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$XqdA7fpwIVtKrLDyi0rYQ3HB2ks;

    invoke-direct {v1, p0, v0, p2}, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$XqdA7fpwIVtKrLDyi0rYQ3HB2ks;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 104
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;->getItemType()I

    move-result p2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_7

    .line 105
    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    .line 106
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getVideo()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 107
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsVideoIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_VIDEO_ICON_VECTOR:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {p2, v1}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->loadVector(Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 108
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 110
    :cond_6
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :goto_3
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->newComeinText:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getItemType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->setType(Ljava/lang/Integer;)V

    .line 116
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->setDevice(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    .line 117
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->executePendingBindings()V

    .line 118
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceIcon()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_110:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {p2, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 119
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->contactsAvatar:Landroid/widget/ImageView;

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$3rqduFahjftKz_2PRBhLG9hCYQo;

    invoke-direct {p2, p0, v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$3rqduFahjftKz_2PRBhLG9hCYQo;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateVH(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->onCreateVH(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateVH(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;
    .locals 2

    .line 38
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->contacts_item_layout:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    .line 39
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;)V

    return-object p1
.end method

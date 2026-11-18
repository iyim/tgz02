.class public Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;
.super Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListActivity;
.source "VCallListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VCallListActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initComponent()V
    .locals 2

    .line 68
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->setLayoutMargin()V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;->setDataList(Ljava/util/List;)V

    .line 71
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 72
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;->recyclerview:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;->recyclerview:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;->layoutExit:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListActivity$l3U9P48NASwMX7XPiYXWjvye2gg;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListActivity$l3U9P48NASwMX7XPiYXWjvye2gg;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListActivity$YKtuaId3jl0Um9G-zSGpe2UtY9c;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListActivity$YKtuaId3jl0Um9G-zSGpe2UtY9c;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;->setOnItemClickListener(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;)V

    return-void
.end method

.method private openIndex(I)V
    .locals 10

    .line 90
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openIndex.index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_c

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->getRetMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->getRetValue()Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 106
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getDeviceTargets()Ljava/util/List;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getTargetType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEVICE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "PSTN"

    const-string v4, "AUDIO"

    const-string v5, "VIDEO"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getDeviceTargets()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 108
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;

    .line 109
    new-instance v2, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;-><init>()V

    .line 110
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->getDeviceIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceIcon(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->getDevicePosition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setPosition(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceId(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setPhoneNumber(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceType(Ljava/lang/String;)V

    .line 117
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setUserId(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 119
    sget-object v8, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getType()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->getRetMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 126
    :cond_3
    invoke-static {p0, v2, v6}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;Z)V

    goto/16 :goto_1

    .line 128
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->getRetMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 132
    :cond_5
    invoke-static {p0, v2, v7}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;Z)V

    goto/16 :goto_1

    .line 134
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 135
    invoke-static {p0, v2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    goto/16 :goto_1

    .line 138
    :cond_7
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V

    .line 139
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setAvatar(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getRelationShip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getPhoneNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOutUserId(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getType()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->getRetMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v6, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->voipToPstn(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;ZLjava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_8
    invoke-static {p0, v1, v6}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Z)V

    goto :goto_1

    .line 152
    :cond_9
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->getRetMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v7, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->voipToPstn(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;ZLjava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_a
    invoke-static {p0, v1, v7}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Z)V

    goto :goto_1

    .line 158
    :cond_b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 159
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    :cond_c
    :goto_1
    return-void
.end method

.method private setLayoutMargin()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;->recyclerview:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 85
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x5b

    add-int/lit8 v1, v1, 0x54

    const/16 v0, 0xaa

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 3

    .line 180
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListActivity;->getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V

    .line 181
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->TAG:Ljava/lang/String;

    const-string v1, "getAppContextData"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    .line 183
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 185
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "totalNum"

    .line 186
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->size(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fromType"

    const-string v2, "CHAT"

    .line 187
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initComponent$0$VCallListActivity(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initComponent$1$VCallListActivity(Ljava/lang/Object;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->openIndex(I)V

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->initComponent()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 3

    .line 166
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandDomain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", command = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", commandParams = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bundle = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "/Open"

    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    const-string p1, "/PlayIndex"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 168
    :cond_0
    invoke-static {p3}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/OpenCmd;->fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/cmd/model/OpenCmd;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p4

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/OpenCmd;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->openIndex(I)V

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->finish()V

    :cond_2
    return-object p4
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->setLayoutMargin()V

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mAdapter:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method protected resolveIntent(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "content"

    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;->fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    .line 64
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->mList:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public voipToPstn(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 197
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "contacts"

    .line 198
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isVideo"

    .line 199
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extMsg"

    .line 200
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    sget-object p2, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public voipToPstn(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 211
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "device"

    .line 212
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isVideo"

    .line 213
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extMsg"

    .line 214
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    sget-object p2, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

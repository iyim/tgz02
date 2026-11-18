.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;
.super Lcom/alibaba/ailabs/basedomain/common/BaseFragment;
.source "AlarmListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;


# static fields
.field public static final TAG:Ljava/lang/String; = "AlarmListFragment"


# instance fields
.field private mAdapter:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

.field mDeleteAlarmResponseListener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;-><init>()V

    .line 177
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mDeleteAlarmResponseListener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->updateContext()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mAdapter:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)Landroid/widget/ListView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->onDelete(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->showEmptyView()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->updateData(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private onDelete(J)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mDeleteAlarmResponseListener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2766

    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/basedomain/mtop/NetApi;->getDeleteAlarmResult(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;)V

    const-string p1, "delete_clock"

    const-string p2, "a1z3lt.12021506"

    const-string v0, "alarmclock_display"

    const/4 v1, 0x0

    .line 142
    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showEmptyView()V
    .locals 3

    const-string v0, "AlarmListFragment"

    const-string v1, "show empty alarm list"

    .line 130
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/EmptyAlarmListFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/EmptyAlarmListFragment;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 135
    sget v2, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 136
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private updateContext()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAlarmListForContext()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->updateAppContext(Lorg/json/JSONObject;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateContext, context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAlarmListForContext()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmListFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateData(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;)V
    .locals 1

    .line 118
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    .line 119
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mAdapter:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->updateData(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;)V

    .line 120
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateData, data:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmListFragment"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mAdapter:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->notifyDataSetChanged()V

    .line 123
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->showEmptyView()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 1

    .line 159
    sget-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->ALARM:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    return-object v0
.end method

.method public getPageNameForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "alarmclock_display"

    return-object v0
.end method

.method public getPagePropertiesForUT()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getPageType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSPMForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12021506"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 50
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_alarm_domain_alarm_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mListView:Landroid/widget/ListView;

    .line 53
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    const-string p3, "a1z3lt.12021506"

    const-string v0, "alarmclock_display"

    const-string v1, "escapepod_home"

    .line 54
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "escapepod_back"

    .line 55
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "AlarmListFragment"

    const-string p3, "onCreateView"

    .line 63
    invoke-static {p2, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v0, "data"

    .line 67
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    .line 68
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->size()I

    move-result p3

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->showEmptyView()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->updateContext()V

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AlarmListFragment data:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-direct {p2, p3, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mAdapter:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    .line 74
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mAdapter:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mAdapter:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->setDeleteListener(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter$IScrollDeleteListener;)V

    goto :goto_0

    .line 93
    :cond_1
    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    const-string v0, "No extra find "

    invoke-static {p2, v0, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 152
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;->onDestroy()V

    const-string v0, "AlarmListFragment"

    const-string v1, "onDestroy"

    .line 153
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->release()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;->onPause()V

    const-string v0, "AlarmListFragment"

    const-string v1, "onPause"

    .line 113
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->updateAppContext(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 100
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;->onResume()V

    const-string v0, "AlarmListFragment"

    const-string v1, "onResume"

    .line 101
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAddedAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 105
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->mAdapter:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListAdapter;->notifyDataSetChanged()V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smoothScrollToPosition addedAlarm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

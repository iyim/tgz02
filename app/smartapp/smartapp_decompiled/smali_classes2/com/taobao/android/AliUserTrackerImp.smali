.class public Lcom/taobao/android/AliUserTrackerImp;
.super Ljava/lang/Object;
.source "AliUserTrackerImp.java"

# interfaces
.implements Lcom/taobao/android/AliUserTrackerInterface;


# static fields
.field private static final sInstance:Lcom/taobao/android/AliUserTrackerImp;


# instance fields
.field private final mUTTracker:Lcom/ut/mini/UTTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/taobao/android/AliUserTrackerImp;

    invoke-direct {v0}, Lcom/taobao/android/AliUserTrackerImp;-><init>()V

    sput-object v0, Lcom/taobao/android/AliUserTrackerImp;->sInstance:Lcom/taobao/android/AliUserTrackerImp;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    return-void
.end method

.method private static getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;
    .locals 0

    .line 223
    invoke-virtual {p0}, Lcom/taobao/android/AliUserTrackerCT;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/statistic/CT;->valueOf(Ljava/lang/String;)Lcom/taobao/statistic/CT;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/taobao/android/AliUserTrackerImp;
    .locals 1

    .line 26
    sget-object v0, Lcom/taobao/android/AliUserTrackerImp;->sInstance:Lcom/taobao/android/AliUserTrackerImp;

    return-object v0
.end method


# virtual methods
.method public addTPKCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->addTPKCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTPKItem(Lcom/alibaba/analytics/core/config/UTTPKItem;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->addTPKItem(Lcom/alibaba/analytics/core/config/UTTPKItem;)V

    return-void
.end method

.method public varargs adv_ctrlClicked(Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Adv;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public adv_ctrlClicked(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Adv;->ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_ctrlClicked(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3, p4}, Lcom/taobao/statistic/TBS$Adv;->ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public adv_ctrlClickedOnPage(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Adv;->ctrlClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_ctrlClickedOnPage(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3, p4}, Lcom/taobao/statistic/TBS$Adv;->ctrlClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_ctrlLongClicked(Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-static {p1}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Adv;->ctrlLongClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public adv_ctrlLongClicked(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Adv;->ctrlLongClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_ctrlLongClicked(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3, p4}, Lcom/taobao/statistic/TBS$Adv;->ctrlLongClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public adv_ctrlLongClickedOnPage(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Adv;->ctrlLongClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_ctrlLongClickedOnPage(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3, p4}, Lcom/taobao/statistic/TBS$Adv;->ctrlLongClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_destroy(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Adv;->destroy(Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_easyTraceEnter(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Adv;->easyTraceEnter(Ljava/lang/String;Z[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_easyTraceInternalCtrlClick(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Adv;->easyTraceInternalCtrlClick(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_easyTraceLeave(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Adv;->easyTraceLeave(Ljava/lang/String;Z[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_enter(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Adv;->enter(Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_enterWithPageName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Adv;->enterWithPageName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_itemSelected(Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-static {p1}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lcom/taobao/statistic/TBS$Adv;->itemSelected(Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public adv_itemSelected(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;I)V
    .locals 0

    .line 142
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3, p4}, Lcom/taobao/statistic/TBS$Adv;->itemSelected(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_itemSelected(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3, p4, p5}, Lcom/taobao/statistic/TBS$Adv;->itemSelected(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public adv_itemSelectedOnPage(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;I)V
    .locals 0

    .line 149
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3, p4}, Lcom/taobao/statistic/TBS$Adv;->itemSelectedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_itemSelectedOnPage(Ljava/lang/String;Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-static {p2}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p2

    invoke-static {p1, p2, p3, p4, p5}, Lcom/taobao/statistic/TBS$Adv;->itemSelectedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_keepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Adv;->keepKvs(Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_leave(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Adv;->leave(Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public adv_onCaughException(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    invoke-static {p1}, Lcom/taobao/statistic/TBS$Adv;->onCaughException(Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public adv_putKvs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Adv;->putKvs(Ljava/lang/String;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public adv_turnOffLogFriendly()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-static {}, Lcom/taobao/statistic/TBS$Adv;->turnOffLogFriendly()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs adv_unKeepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Adv;->unKeepKvs(Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public buttonClicked(Ljava/lang/String;)V
    .locals 0

    .line 228
    invoke-static {p1}, Lcom/taobao/statistic/TBS$Page;->buttonClicked(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEvent(I)V
    .locals 0

    .line 424
    invoke-static {p1}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEvent(ILjava/lang/Object;)V
    .locals 0

    .line 428
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(ILjava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 432
    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 436
    invoke-static {p1, p2, p3, p4}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    .line 441
    invoke-static {p1, p2, p3, p4, p5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEvent(Ljava/lang/String;I)V
    .locals 0

    .line 398
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEvent(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 402
    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 406
    invoke-static {p1, p2, p3, p4}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 410
    invoke-static {p1, p2, p3, p4, p5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    .line 420
    invoke-static/range {p1 .. p6}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEvent(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0

    .line 386
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;Ljava/util/Properties;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEventBegin(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0

    .line 390
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Ext;->commitEventBegin(Ljava/lang/String;Ljava/util/Properties;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitEventEnd(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0

    .line 394
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Ext;->commitEventEnd(Ljava/lang/String;Ljava/util/Properties;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public create(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-static {p1}, Lcom/taobao/statistic/TBS$Page;->create(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Page;->create(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public ctrlClicked(Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;)V
    .locals 0

    .line 219
    invoke-static {p1}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Page;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public ctrlLongClicked(Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;)V
    .locals 0

    .line 233
    invoke-static {p1}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Page;->ctrlLongClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public destroy(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-static {p1}, Lcom/taobao/statistic/TBS$Page;->destroy(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public enter(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    invoke-static {p1}, Lcom/taobao/statistic/TBS$Page;->enter(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public enterWithPageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Page;->enterWithPageName(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageAllProperties(Landroid/app/Activity;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->getPageAllProperties(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getPageProperties(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->getPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getPageScmPre(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->getPageScmPre(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageSpmPre(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->getPageSpmPre(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageSpmUrl(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->getPageSpmUrl(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public goBack()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    invoke-static {}, Lcom/taobao/statistic/TBS$Page;->goBack()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public itemSelected(Lcom/taobao/android/AliUserTrackerCT;Ljava/lang/String;I)V
    .locals 0

    .line 238
    invoke-static {p1}, Lcom/taobao/android/AliUserTrackerImp;->getCt(Lcom/taobao/android/AliUserTrackerCT;)Lcom/taobao/statistic/CT;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/taobao/statistic/TBS$Page;->itemSelected(Lcom/taobao/statistic/CT;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public leave(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/taobao/statistic/TBS$Page;->leave(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public pageAppear(Ljava/lang/Object;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;)V

    return-void
.end method

.method public pageAppear(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public pageAppearDonotSkip(Ljava/lang/Object;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->pageAppearDonotSkip(Ljava/lang/Object;)V

    return-void
.end method

.method public pageAppearDonotSkip(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->pageAppearDonotSkip(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public pageDisAppear(Ljava/lang/Object;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->pageDisAppear(Ljava/lang/Object;)V

    return-void
.end method

.method public refreshExposureData()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0}, Lcom/ut/mini/UTTracker;->refreshExposureData()V

    return-void
.end method

.method public refreshExposureData(Ljava/lang/String;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->refreshExposureData(Ljava/lang/String;)V

    return-void
.end method

.method public refreshExposureDataByViewId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->refreshExposureDataByViewId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeGlobalProperty(Ljava/lang/String;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->removeGlobalProperty(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public setExposureTag(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ut/mini/UTTracker;->setExposureTag(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPageStatusCode(Ljava/lang/Object;I)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->setPageStatusCode(Ljava/lang/Object;I)V

    return-void
.end method

.method public skipNextPageBack()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0}, Lcom/ut/mini/UTTracker;->skipNextPageBack()V

    return-void
.end method

.method public skipPage(Ljava/lang/Object;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->skipPage(Ljava/lang/Object;)V

    return-void
.end method

.method public skipPageBack(Landroid/app/Activity;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->skipPageBack(Landroid/app/Activity;)V

    return-void
.end method

.method public skipPageBackForever(Landroid/app/Activity;Z)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->skipPageBackForever(Landroid/app/Activity;Z)V

    return-void
.end method

.method public updateNextPageProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->updateNextPageProperties(Ljava/util/Map;)V

    return-void
.end method

.method public updateNextPageUtparam(Ljava/lang/String;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->updateNextPageUtparam(Ljava/lang/String;)V

    return-void
.end method

.method public updatePageName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updatePageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Page;->updatePageName(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public updatePageProperties(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    invoke-static {p1, p2}, Lcom/taobao/statistic/TBS$Page;->updatePageProperties(Ljava/lang/String;Ljava/util/Properties;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updatePageStatus(Ljava/lang/Object;Lcom/ut/mini/UTPageStatus;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->updatePageStatus(Ljava/lang/Object;Lcom/ut/mini/UTPageStatus;)V

    return-void
.end method

.method public updatePageUrl(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->updatePageUrl(Ljava/lang/Object;Landroid/net/Uri;)V

    return-void
.end method

.method public updatePageUtparam(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/taobao/android/AliUserTrackerImp;->mUTTracker:Lcom/ut/mini/UTTracker;

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/UTTracker;->updatePageUtparam(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

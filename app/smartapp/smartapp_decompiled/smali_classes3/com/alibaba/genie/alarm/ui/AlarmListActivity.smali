.class public Lcom/alibaba/genie/alarm/ui/AlarmListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AlarmListActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AlarmListActivity:"


# instance fields
.field private alarmBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/alarm/bean/AlarmBean;",
            ">;"
        }
    .end annotation
.end field

.field private alarmListAdapter:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

.field callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/genie/alarm/request/GSRBaseRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private isInDeleteMode:Z

.field private final localDeletedAlarmIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field onClickListener:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private rlBackground:Landroid/widget/RelativeLayout;

.field private stageModifyWeeklyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timePickerWeeklyView:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

.field private timeSelectView:Lcom/alibaba/genie/alarm/view/TimeSelectView;

.field private tvDelete:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 56
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmBeans:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->localDeletedAlarmIds:Ljava/util/List;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->isInDeleteMode:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->stageModifyWeeklyList:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$1;

    const-wide/16 v3, 0x4e20

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$1;-><init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;JJ)V

    iput-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->countDownTimer:Landroid/os/CountDownTimer;

    .line 233
    new-instance v0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$5;-><init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)V

    iput-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->onClickListener:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;

    .line 272
    new-instance v0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$6;-><init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)V

    iput-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->localDeletedAlarmIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->clickOnTvDelete(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1000(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Lcom/alibaba/genie/alarm/bean/AlarmBean;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->showWeeklyPickView(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1100(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timePickerWeeklyView:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->isInDeleteMode:Z

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmListAdapter:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;J)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->deleteOneAlarm(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Lcom/alibaba/genie/alarm/bean/AlarmBean;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->showTimeSelectView(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->dataParseCenter(Lcom/alibaba/fastjson/JSONArray;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->stageModifyWeeklyList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->stageModifyWeeklyList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Lcom/alibaba/genie/alarm/view/TimeSelectView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timeSelectView:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    return-object p0
.end method

.method private clickOnTvDelete(Z)V
    .locals 8

    .line 101
    iget-boolean v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->isInDeleteMode:Z

    const-string v1, "a1z3lt.12021506"

    const-string v2, "alarmclock_display"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 102
    iput-boolean v3, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->isInDeleteMode:Z

    .line 103
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    sget v6, Lcom/alibaba/ailabs/basedomain/R$string;->text_cancel:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    const-string p1, "delete_save"

    .line 107
    invoke-static {p1, v2, v1, v5}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 110
    :cond_0
    iput-boolean v4, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->isInDeleteMode:Z

    .line 111
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    sget v6, Lcom/alibaba/ailabs/basedomain/R$string;->text_delete:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v6, Lcom/alibaba/ailabs/basedomain/R$drawable;->icon_titlebar_container_delete:I

    invoke-static {v0, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    iget-object v6, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/alibaba/ailabs/basedomain/R$drawable;->bg_title_bar_delete:I

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    const-string p1, "click_delete"

    .line 117
    invoke-static {p1, v2, v1, v5}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 121
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->isInDeleteMode:Z

    .line 122
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmBeans:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/alarm/bean/AlarmBean;

    if-eqz p1, :cond_2

    .line 126
    iput-boolean v3, v1, Lcom/alibaba/genie/alarm/bean/AlarmBean;->isShowDelete:Z

    .line 127
    iput-boolean v4, v1, Lcom/alibaba/genie/alarm/bean/AlarmBean;->isShowSelected:Z

    goto :goto_1

    .line 129
    :cond_2
    iput-boolean v4, v1, Lcom/alibaba/genie/alarm/bean/AlarmBean;->isShowDelete:Z

    goto :goto_1

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmListAdapter:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    if-eqz p1, :cond_4

    .line 134
    invoke-virtual {p1}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private dataParseCenter(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 14

    .line 298
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmBeans:Ljava/util/List;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmBeans:Ljava/util/List;

    goto :goto_0

    .line 301
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    const/16 v0, 0x8

    const-string v1, "AlarmListActivity:"

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    .line 304
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    .line 322
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u89e3\u6790\u51fa\u7684\u9876\u7ea7jsonArray\u957f\u5ea6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v3, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->rlBackground:Landroid/widget/RelativeLayout;

    sget v4, Lcom/alibaba/ailabs/basedomain/R$color;->bg_alarm_list:I

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 325
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 326
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 327
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/JSONObject;

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5f53\u524d\u904d\u5386\u51fa\u6765\u6570\u636e\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "alarmId"

    .line 331
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 332
    sget-object v8, Lcom/alibaba/genie/alarm/utils/AlarmRingType;->hashMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :try_start_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/genie/alarm/bean/AlarmBean;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/genie/alarm/bean/AlarmBean;

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u95f9\u949f   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n\u95f9\u949fid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getAlarmId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\n\u97f3\u4e50\u7535\u53f0 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v5}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getMusicDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;->getMusicTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\u95f9\u94c3\u5468\u671f : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v5}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getScheduleType()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\u95f9\u94c3\u65f6\u95f4 \u89e3\u6790\u65e5\u671f: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v5}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getDateTimes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/genie/alarm/utils/ISODateUtils;->parseDate(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\n\u95f9\u94c3\u65f6\u95f4 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v5}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->getDateTimes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/genie/alarm/utils/ISODateUtils;->parseDate(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/alibaba/genie/alarm/utils/ISODateUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n uuid :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v5}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 348
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#JSONObject Parse Error Throwable:  - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 353
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 355
    iget-boolean v4, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->isInDeleteMode:Z

    .line 356
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/genie/alarm/bean/AlarmBean;

    .line 357
    invoke-virtual {v7}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 358
    invoke-virtual {v7}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getAlarmId()J

    move-result-wide v9

    sget-wide v11, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stagedAddAlarmId:J

    cmp-long v13, v9, v11

    if-nez v13, :cond_4

    .line 359
    iput-boolean v8, v7, Lcom/alibaba/genie/alarm/bean/AlarmBean;->isShowSelected:Z

    move v6, v5

    goto :goto_4

    .line 362
    :cond_4
    iput-boolean v2, v7, Lcom/alibaba/genie/alarm/bean/AlarmBean;->isShowSelected:Z

    .line 364
    :goto_4
    iput-boolean v4, v7, Lcom/alibaba/genie/alarm/bean/AlarmBean;->isShowDelete:Z

    .line 366
    iget-object v8, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->localDeletedAlarmIds:Ljava/util/List;

    invoke-virtual {v7}, Lcom/alibaba/genie/alarm/bean/AlarmBean;->getAlarmId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 367
    iget-object v8, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmBeans:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const-wide/16 v9, 0x0

    .line 372
    sput-wide v9, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stagedAddAlarmId:J

    .line 374
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 375
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->rlBackground:Landroid/widget/RelativeLayout;

    sget v3, Lcom/alibaba/ailabs/basedomain/R$drawable;->bg_no_alrams:I

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 376
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_8

    .line 379
    invoke-direct {p0, v2}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->clickOnTvDelete(Z)V

    const/4 v2, 0x1

    goto :goto_5

    .line 382
    :cond_7
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    :cond_8
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89e3\u6790\u7ed3\u675f\u5566 : \u5f53\u524d\u53ef\u7528\u95f9\u949f \uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_9

    .line 386
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmListAdapter:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    invoke-virtual {p1}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->notifyDataSetChanged()V

    if-lez v6, :cond_9

    .line 387
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v6, p1, :cond_9

    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_9

    .line 388
    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_9
    return-void

    :cond_a
    :goto_6
    const-string p1, "\u63a5\u53e3\u8bf7\u6c42\u6210\u529f\u4f46\u6570\u636e\u662f\u7a7a"

    .line 306
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->rlBackground:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alibaba/ailabs/basedomain/R$drawable;->bg_no_alrams:I

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 310
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-boolean p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->isInDeleteMode:Z

    if-eqz p1, :cond_b

    .line 312
    invoke-direct {p0, v2}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->clickOnTvDelete(Z)V

    goto :goto_7

    .line 314
    :cond_b
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmListAdapter:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    if-eqz p1, :cond_c

    .line 315
    invoke-virtual {p1}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->notifyDataSetChanged()V

    :cond_c
    :goto_7
    return-void
.end method

.method private deleteOneAlarm(J)V
    .locals 2

    const/4 v0, 0x1

    .line 139
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 141
    new-instance v1, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$2;-><init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;J)V

    invoke-static {p0, v0, v1}, Lcom/alibaba/genie/alarm/request/DeleteAlarmRequest;->beginRequest(Landroid/content/Context;[JLcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initView()V
    .locals 3

    .line 161
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->rl_background:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->rlBackground:Landroid/widget/RelativeLayout;

    .line 162
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->view_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->tv_delete:I

    invoke-virtual {p0, v1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    .line 165
    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->rv_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 166
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->tvDelete:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$3;-><init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v1, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$4;-><init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/genie/alarm/adapter/SimpleDecoration;

    invoke-direct {v1}, Lcom/alibaba/genie/alarm/adapter/SimpleDecoration;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 183
    new-instance v0, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmBeans:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmListAdapter:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    .line 184
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmListAdapter:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->onClickListener:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;->setOnClickListener(Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->alarmListAdapter:Lcom/alibaba/genie/alarm/adapter/AlarmListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private showTimeSelectView(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    const-string v0, "AlarmListActivity:"

    const-string v1, "#showTimeSelectView  : "

    .line 397
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "click_alarm"

    const-string v2, "alarmclock_display"

    const-string v3, "a1z3lt.12021506"

    const/4 v4, 0x0

    .line 399
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 400
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timeSelectView:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    if-nez v1, :cond_0

    .line 401
    new-instance v1, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;

    invoke-direct {v1, p0, p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;-><init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timeSelectView:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    .line 439
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 440
    iget-object v2, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timeSelectView:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-virtual {v2, v1}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timeSelectView:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-virtual {v1, p1}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->dispatchData(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V

    .line 443
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timeSelectView:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#showTimeSelectView: addView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showWeeklyPickView(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    const-string v0, "AlarmListActivity:"

    const-string v1, "#showWeeklyPickView  : "

    .line 454
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timePickerWeeklyView:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    if-nez v1, :cond_0

    .line 457
    new-instance v1, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$8;

    invoke-direct {v1, p0, p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$8;-><init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timePickerWeeklyView:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    .line 471
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 472
    iget-object v2, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timePickerWeeklyView:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    invoke-virtual {v2, v1}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timePickerWeeklyView:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    invoke-virtual {v1, p1}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->dispatchData(Lcom/alibaba/genie/alarm/bean/AlarmBean;)V

    .line 475
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->timePickerWeeklyView:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " # showWeeklyPickView: addView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 505
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    const-string v0, "AlarmListActivity:"

    const-string v1, "dispatchTouchEvent: \u89e6\u53d1\u8ba1\u65f6\u5668\u91cd\u7f6e"

    .line 508
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmListActivity:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {p1}, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->getIntentData(Landroid/content/Intent;)J

    .line 85
    sget p1, Lcom/alibaba/ailabs/basedomain/R$layout;->activity_alarm_list:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->setContentView(I)V

    .line 86
    sget-object p1, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stageAlarmListForContext:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object p1

    sget-object v0, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stageAlarmListForContext:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->updateAppContext(Lorg/json/JSONObject;)V

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onCreate: \u66f4\u65b0\u8bed\u97f3\u6307\u4ee4 : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stageAlarmListForContext:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-static {p0, p1}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->beginRequest(Landroid/content/Context;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    .line 91
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->initView()V

    .line 92
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 94
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 96
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    const/4 p1, 0x0

    const-string v0, "alarmclock_display"

    const-string v1, "a1z3lt.12021506"

    .line 97
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->pageUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 224
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const-string v0, "AlarmListActivity:"

    const-string v1, "#onDestroy"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->countDownTimer:Landroid/os/CountDownTimer;

    .line 230
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->release()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 486
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmListActivity:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {p1}, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->getIntentData(Landroid/content/Intent;)J

    .line 489
    sget-object p1, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stageAlarmListForContext:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 490
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object p1

    sget-object v0, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stageAlarmListForContext:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->updateAppContext(Lorg/json/JSONObject;)V

    .line 491
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNewIntent: updateAppupdateAppContext "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stageAlarmListForContext:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-static {p0, p1}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->beginRequest(Landroid/content/Context;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    .line 495
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    .line 496
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 497
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 205
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 206
    iget-boolean v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->isInDeleteMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->clickOnTvDelete(Z)V

    :cond_0
    const-string v0, "AlarmListActivity:"

    const-string v1, "#onPause"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 198
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v0, "AlarmListActivity:"

    const-string v1, "#onResume"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onStart()V
    .locals 2

    .line 192
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    const-string v0, "AlarmListActivity:"

    const-string v1, "#onStart"

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onStop()V
    .locals 2

    .line 214
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    const-string v0, "AlarmListActivity:"

    const-string v1, "#onStop"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 219
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->updateAppContext(Lorg/json/JSONObject;)V

    return-void
.end method

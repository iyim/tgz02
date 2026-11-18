.class public Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;
.super Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;
.source "CallRecordItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter<",
        "Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_records"

.field public static final VIEW_FOOTER:I = 0x1

.field public static final VIEW_ITEM:I


# instance fields
.field private handler:Landroid/os/Handler;

.field public isLoadMore:Z

.field private mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;

.field private mFooterBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->isLoadMore:Z

    .line 58
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->deleteRecords(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private deleteRecords(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$2;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCallIconId(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)I
    .locals 2

    .line 234
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getCallType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "OUT"

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getDirection()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    sget p1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->custom_voip_out:I

    return p1

    .line 238
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->custom_voip_in:I

    return p1

    .line 241
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getDirection()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    sget p1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->custom_pstn_out:I

    return p1

    .line 244
    :cond_2
    sget p1, Lcom/alibaba/ailabs/genie/custom/contacts/R$drawable;->custom_pstn_in:I

    return p1
.end method

.method private getCallTime(Ljava/lang/Long;)Ljava/lang/String;
    .locals 8

    .line 337
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 339
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, 0x6

    .line 340
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v3, :cond_5

    const/16 p1, 0x9

    .line 341
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const-string v1, "0"

    const-string v2, ""

    const/16 v3, 0xa

    const/16 v7, 0xc

    if-nez p1, :cond_1

    .line 342
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ge p1, v3, :cond_0

    .line 343
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_today_am_time:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 344
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 343
    invoke-virtual {p1, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_today_am_time:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 347
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 346
    invoke-virtual {p1, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 350
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-nez p1, :cond_3

    .line 351
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ge p1, v3, :cond_2

    .line 352
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_today_pm_time:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 353
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 352
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_today_pm_time:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 356
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 355
    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 359
    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ge p1, v3, :cond_4

    .line 360
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_today_pm_time:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 361
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 360
    invoke-virtual {p1, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 363
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_today_pm_time:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 364
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 363
    invoke-virtual {p1, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 368
    :cond_5
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v2, v6, :cond_6

    .line 369
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_yesterday:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 v2, 0x3

    .line 370
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p1, v3, :cond_7

    .line 371
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/alibaba/ailabs/genie/custom/contacts/R$array;->custom_week:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x7

    .line 372
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 386
    :pswitch_0
    aget-object p1, p1, v1

    return-object p1

    :pswitch_1
    const/4 v0, 0x5

    .line 384
    aget-object p1, p1, v0

    return-object p1

    :pswitch_2
    const/4 v0, 0x4

    .line 382
    aget-object p1, p1, v0

    return-object p1

    .line 380
    :pswitch_3
    aget-object p1, p1, v2

    return-object p1

    .line 378
    :pswitch_4
    aget-object p1, p1, v5

    return-object p1

    .line 376
    :pswitch_5
    aget-object p1, p1, v6

    return-object p1

    .line 374
    :pswitch_6
    aget-object p1, p1, v4

    return-object p1

    .line 391
    :cond_7
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    const-string v0, "yyyy/MM/dd"

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDurationTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    .line 310
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v1

    .line 311
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    .line 312
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    mul-long p1, p1, v7

    sub-long/2addr v5, p1

    const/4 p1, 0x2

    const/4 p2, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    cmp-long v10, v1, v8

    if-lez v10, :cond_0

    .line 315
    :try_start_1
    iget-object v8, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_duration_hours:I

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, p2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v10, p1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    cmp-long v10, v1, v8

    if-nez v10, :cond_1

    cmp-long v10, v3, v8

    if-lez v10, :cond_1

    .line 317
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_duration_min:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p1, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p1, p2

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    cmp-long p1, v1, v8

    if-nez p1, :cond_2

    cmp-long p1, v3, v8

    if-nez p1, :cond_2

    cmp-long p1, v5, v8

    if-lez p1, :cond_2

    .line 319
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_duration_sec:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v7

    invoke-virtual {p1, v1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 321
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_3
    const-string p2, "OUT"

    .line 324
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_out:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 327
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_in:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "contacts_records"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getName(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)Ljava/lang/String;
    .locals 2

    .line 250
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getName()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private onBindRecordVH(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;I)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;

    .line 153
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;

    move-result-object v0

    .line 154
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->callRecordCallDescribe:Landroid/widget/TextView;

    invoke-direct {p0, v1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->setTextViewData(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V

    .line 155
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->contactsName:Landroid/widget/TextView;

    invoke-direct {p0, v1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->setTextViewData(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V

    .line 156
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->callRecordTime:Landroid/widget/TextView;

    invoke-direct {p0, v1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->setTextViewData(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V

    .line 157
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->callDuration:Landroid/widget/TextView;

    invoke-direct {p0, v1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->setTextViewData(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V

    .line 158
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->listItemLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/-$$Lambda$CallRecordItemAdapter$vd_uBCPe-aSAeFu2RLC4b8RVjs4;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/-$$Lambda$CallRecordItemAdapter$vd_uBCPe-aSAeFu2RLC4b8RVjs4;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->callRecordAvatar:Landroid/widget/ImageView;

    sget-object v1, Lcom/alibaba/ailabs/genie/custom/contacts/common/glide/GlideUtils;->REQUEST_OPTIONS_110:Lcom/bumptech/glide/request/RequestOptions;

    const-string v2, ""

    invoke-static {p1, v2, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->callRecordAvatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->getContactsAvatarBg(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :goto_0
    iget-object p1, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->tvSimpleName:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->getName(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->callRecordAvatar:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/-$$Lambda$CallRecordItemAdapter$P16Nu0yFMMAAeaM1j1AsFbC1vxQ;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/-$$Lambda$CallRecordItemAdapter$P16Nu0yFMMAAeaM1j1AsFbC1vxQ;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object p1, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->callRecordVideoIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->getCallIconId(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setTextViewData(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V
    .locals 8

    .line 259
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    .line 260
    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->call_record_call_describe:I

    if-ne v0, v1, :cond_2

    .line 261
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getOriginData()Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSTN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    sget p2, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_audio:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 264
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getCallType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AUDIO"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 265
    sget p2, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_voip_audio:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 267
    :cond_1
    sget p2, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_video:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 270
    :cond_2
    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->contacts_name:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 271
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getName()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getPhone()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getCount()I

    move-result v1

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-le v1, v5, :cond_4

    .line 277
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_more_than_one_call_record:I

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v3, v7, v5

    .line 278
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, v4

    .line 277
    invoke-virtual {v1, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 280
    :cond_4
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_only_one_call_record:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object v3, v4, v5

    invoke-virtual {p2, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 288
    :cond_5
    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->call_record_time:I

    if-ne v0, v1, :cond_6

    .line 289
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getStartCallTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->getCallTime(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_6
    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->call_duration:I

    if-ne v0, v1, :cond_9

    .line 291
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getAnswerState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACCEPTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 292
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_dial_plate_letter_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getDurationTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getDirection()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, v1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->getDurationTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 294
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 295
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const/16 p2, 0x8

    .line 298
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 301
    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_red:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_not_answer:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_0
    return-void
.end method

.method private showDeleteDialog(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;Ljava/lang/String;)V
    .locals 6

    .line 109
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_delete_record_dialog:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    sget v4, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dialog_delete:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dialog_cancle:I

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;-><init>(Landroid/content/Context;I[I)V

    .line 110
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 111
    sget v2, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dialog_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance p2, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V

    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->setOnCenterItemClickListener(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog$OnCenterItemClickListener;)V

    .line 138
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->show()V

    return-void
.end method

.method private startDetailsActivity(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V
    .locals 6

    .line 208
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;-><init>()V

    .line 209
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactId(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getOriginData()Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 215
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallDirection()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "USER"

    const-string v5, "DEVICE"

    if-eqz v3, :cond_1

    .line 216
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactDeviceName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerProductKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactProductKey(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerExtUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactExtUserId(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactType(Ljava/lang/String;)V

    goto :goto_2

    .line 221
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleeDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactDeviceName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleeProductKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactProductKey(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleeExtUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactExtUserId(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleeDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactType(Ljava/lang/String;)V

    .line 227
    :cond_3
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    .line 230
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->showDetailActivity(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V

    return-void
.end method


# virtual methods
.method public addRecord(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 403
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onBindRecordVH$20$CallRecordItemAdapter(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;Landroid/view/View;)V
    .locals 3

    .line 159
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->isInvalid()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 160
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_call_error:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->showDeleteDialog(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isCMCC()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 164
    new-instance p2, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;-><init>()V

    .line 165
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactId(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getCallType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VIDEO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Z)V

    goto/16 :goto_4

    .line 173
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getDirection()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    .line 174
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getOriginData()Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PSTN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    new-instance p2, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactId(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callCuVOIP(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Ljava/lang/String;)V

    goto :goto_4

    .line 182
    :cond_3
    new-instance p1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;-><init>()V

    if-eqz p2, :cond_4

    .line 183
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerDeviceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleeDeviceName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactDeviceName(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 184
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerNickname()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleeNickname()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 185
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerExtUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleeExtUserId()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactExtUserId(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 186
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerProductKey()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleeProductKey()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->setContactProductKey(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callCuVOIP(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public synthetic lambda$onBindRecordVH$21$CallRecordItemAdapter(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;Landroid/view/View;)V
    .locals 1

    .line 198
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->isInvalid()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 199
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$string;->custom_call_error:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->showDeleteDialog(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;Ljava/lang/String;)V

    return-void

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->startDetailsActivity(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V

    return-void
.end method

.method public onBindVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 75
    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;

    .line 76
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->isLoadMore:Z

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_1
    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->onBindRecordVH(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onCreateVH(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_call_record_item_layout:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;

    .line 65
    new-instance p1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;)V

    return-object p1

    .line 67
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_layout_item_footer:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mFooterBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    .line 68
    new-instance p1, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mFooterBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;)V

    return-object p1
.end method

.method public setIsLoadMoreChange(Z)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->isLoadMore:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->isLoadMore:Z

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public updateRecord(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;I)V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->setCount(I)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getStartCallTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->setStartCallTime(J)V

    const/4 p1, 0x1

    .line 398
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

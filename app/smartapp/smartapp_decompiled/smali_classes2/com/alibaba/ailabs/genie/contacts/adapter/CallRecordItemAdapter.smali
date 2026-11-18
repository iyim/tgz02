.class public Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;
.super Lcom/alibaba/ailabs/genie/contacts/adapter/BaseAdapter;
.source "CallRecordItemAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog$OnCenterItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$FooterViewHolder;,
        Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/adapter/BaseAdapter<",
        "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog$OnCenterItemClickListener;"
    }
.end annotation


# static fields
.field public static final DELETE_FAILED:I = 0x2

.field public static final DELETE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "contacts_CallRecordItemAdapter"

.field public static final VIEW_FOOTER:I = 0x1

.field public static final VIEW_ITEM:I


# instance fields
.field public isLoadMore:Z

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

.field private mDialog:Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;

.field private mFooterBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;

.field private mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->isLoadMore:Z

    .line 68
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method private deleteCallRecord(I)V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.call.deleteUserCallLog"

    .line 416
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 417
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 418
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 419
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 420
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 421
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getIds()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 422
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->getAuthInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "authInfo"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ids"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 425
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 426
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;I)V

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    .line 440
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    :cond_1
    :goto_0
    return-void
.end method

.method private getCallIconId(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)I
    .locals 2

    .line 251
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getFinalmode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isCaller()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->voip_out:I

    return p1

    .line 255
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->voip_in:I

    return p1

    .line 258
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isCaller()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 259
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->pstn_out:I

    return p1

    .line 261
    :cond_2
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->pstn_in:I

    return p1
.end method

.method private getCallTime(Ljava/lang/Long;)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .line 308
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 310
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, 0x6

    .line 311
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v3, :cond_5

    const/16 p1, 0x9

    .line 312
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const-string v1, "0"

    const/16 v2, 0xa

    const/16 v3, 0xc

    if-nez p1, :cond_1

    .line 313
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ge p1, v2, :cond_0

    .line 314
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v7, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_today_am_time:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 315
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 314
    invoke-virtual {p1, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_today_am_time:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 318
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 317
    invoke-virtual {p1, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 321
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-nez p1, :cond_3

    .line 322
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ge p1, v2, :cond_2

    .line 323
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_today_pm_time:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 324
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 323
    invoke-virtual {p1, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 326
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_today_pm_time:I

    new-array v2, v5, [Ljava/lang/Object;

    .line 327
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    .line 326
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 330
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ge p1, v2, :cond_4

    .line 331
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v7, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_today_pm_time:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 332
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 331
    invoke-virtual {p1, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 334
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_today_pm_time:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 335
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 334
    invoke-virtual {p1, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 339
    :cond_5
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v2, v6, :cond_6

    .line 340
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_yesterday:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 v2, 0x3

    .line 341
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p1, v3, :cond_7

    .line 342
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/alibaba/ailabs/genie/contacts/R$array;->contacts_week:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x7

    .line 343
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 357
    :pswitch_0
    aget-object p1, p1, v1

    return-object p1

    :pswitch_1
    const/4 v0, 0x5

    .line 355
    aget-object p1, p1, v0

    return-object p1

    :pswitch_2
    const/4 v0, 0x4

    .line 353
    aget-object p1, p1, v0

    return-object p1

    .line 351
    :pswitch_3
    aget-object p1, p1, v2

    return-object p1

    .line 349
    :pswitch_4
    aget-object p1, p1, v5

    return-object p1

    .line 347
    :pswitch_5
    aget-object p1, p1, v6

    return-object p1

    .line 345
    :pswitch_6
    aget-object p1, p1, v4

    return-object p1

    .line 362
    :cond_7
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    const-string v0, "yyyy/MM/dd"

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

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

.method private onBindRecordVH(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;I)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    .line 145
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->callRecordCallDescribe:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->setTextViewData(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)V

    .line 146
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->contactsName:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->setTextViewData(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)V

    .line 147
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->callRecordTime:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->setTextViewData(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)V

    .line 148
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->setCallrecorditem(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)V

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->executePendingBindings()V

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->listItemLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$rbyBbS9mbKvf79LMPu91INZBDCU;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$rbyBbS9mbKvf79LMPu91INZBDCU;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->listItemLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$MJK_4ThjzxRD-znPPuOP41R-k8U;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$MJK_4ThjzxRD-znPPuOP41R-k8U;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)V

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getMode()I

    move-result p2

    if-nez p2, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isCaller()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->callRecordAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceIconUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_110:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {p2, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->callRecordAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceIconUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_110:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {p2, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->callRecordAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerPortraitUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_110:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {p2, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 211
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->callRecordAvatar:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$pDPBWQ_gHjtW4iAnn1tK6PihCm4;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$pDPBWQ_gHjtW4iAnn1tK6PihCm4;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->callRecordVideoIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->getCallIconId(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    return-void
.end method

.method private setTextViewData(Landroid/widget/TextView;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)V
    .locals 8

    .line 268
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    .line 269
    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->call_record_call_describe:I

    if-ne v0, v1, :cond_2

    .line 270
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getFinalmode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSTN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_pstn:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 272
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getFinalmode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AUDIO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 273
    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_audio:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 275
    :cond_1
    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_video:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 277
    :cond_2
    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->contacts_name:I

    if-ne v0, v1, :cond_9

    .line 278
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getNickName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getRelationship()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getRelationship()Ljava/lang/String;

    move-result-object v1

    .line 280
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isFriend()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_6

    .line 281
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCount()I

    move-result v2

    if-le v2, v7, :cond_5

    .line 282
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_more_than_one_call_record:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v7

    .line 283
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    .line 282
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 285
    :cond_5
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_only_one_call_record:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 288
    :cond_6
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCount()I

    move-result v1

    if-le v1, v7, :cond_7

    .line 289
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_more_than_one_call_record:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v2, v4, v7

    .line 290
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    .line 289
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 292
    :cond_7
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_only_one_call_record:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v2, v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getAnswerState()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ACCEPTED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 297
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_colorAccent:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 299
    :cond_8
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_red:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 301
    :cond_9
    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->call_record_time:I

    if-ne v0, v1, :cond_a

    .line 302
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallStartTime()Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->getCallTime(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private startDetailsActivity(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)V
    .locals 5

    .line 218
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDetailsActivity item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contacts_CallRecordItemAdapter"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getMode()I

    move-result v1

    const-string v2, "mode"

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "contactId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getMode()I

    move-result v1

    const/4 v3, 0x2

    const-string v4, "userId"

    if-ne v1, v3, :cond_5

    .line 224
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "mobile"

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x14

    if-ge v1, v3, :cond_1

    .line 226
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isCaller()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_3

    .line 231
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 234
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 237
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 238
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 240
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    .line 244
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getOwnerUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public OnCenterItemClick(Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;Landroid/view/View;)V
    .locals 1

    .line 403
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    .line 404
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dialog_delete:I

    if-ne p2, v0, :cond_0

    .line 405
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->deleteCallRecord(I)V

    goto :goto_0

    .line 406
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dialog_cancle:I

    if-ne p2, v0, :cond_1

    .line 407
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getDataSize()I
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLastIndex()I
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getItemIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public synthetic lambda$onBindRecordVH$61$CallRecordItemAdapter(ILandroid/view/View;)Z
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->showDialog(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onBindRecordVH$62$CallRecordItemAdapter(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;Landroid/view/View;)V
    .locals 6

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call item = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "contacts_CallRecordItemAdapter"

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->utCallBackClick()V

    .line 158
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getMode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "AUDIO"

    const-string v3, "PSTN"

    if-nez p2, :cond_3

    .line 159
    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;-><init>()V

    .line 160
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceId(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isCaller()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeDeviceIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceIcon(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceName(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerDeviceIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceIcon(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceName(Ljava/lang/String;)V

    .line 168
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getFinalmode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    goto/16 :goto_3

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getFinalmode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;Z)V

    goto/16 :goto_3

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;Z)V

    goto/16 :goto_3

    .line 176
    :cond_3
    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPeerPortraitUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setAvatar(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getRelationship()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationName(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isFriend()Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFriend(Z)V

    .line 182
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_4

    .line 183
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 185
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 187
    :goto_1
    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isCaller()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 189
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCalleeUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOutUserId(Ljava/lang/String;)V

    goto :goto_2

    .line 191
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getCallerUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOutUserId(Ljava/lang/String;)V

    .line 193
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getFinalmode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 194
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    goto :goto_3

    .line 195
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getFinalmode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 196
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Z)V

    goto :goto_3

    .line 198
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Z)V

    :goto_3
    return-void
.end method

.method public synthetic lambda$onBindRecordVH$63$CallRecordItemAdapter(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;Landroid/view/View;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->startDetailsActivity(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onBindVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 106
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$FooterViewHolder;

    .line 107
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->isLoadMore:Z

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$FooterViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$FooterViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_1
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->onBindRecordVH(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onCreateVH(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 95
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->call_record_item_layout:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    .line 96
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;)V

    return-object p1

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_item_footer:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mFooterBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;

    .line 99
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$FooterViewHolder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mFooterBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$FooterViewHolder;-><init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;)V

    return-object p1
.end method

.method public setIsLoadMore(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->isLoadMore:Z

    return-void
.end method

.method public setIsLoadMoreChange(Z)V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->isLoadMore:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 135
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->isLoadMore:Z

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public showDialog(I)V
    .locals 6

    .line 394
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$layout;->delete_contacts_dialog:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    sget v4, Lcom/alibaba/ailabs/genie/contacts/R$id;->dialog_delete:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/alibaba/ailabs/genie/contacts/R$id;->dialog_cancle:I

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;-><init>(Landroid/content/Context;I[I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDialog:Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;

    .line 395
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDialog:Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;->setOnCenterItemClickListener(Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog$OnCenterItemClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDialog:Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;->setPosition(I)V

    .line 397
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDialog:Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;

    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;->requestWindowFeature(I)Z

    .line 398
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mDialog:Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CenterDialog;->show()V

    return-void
.end method

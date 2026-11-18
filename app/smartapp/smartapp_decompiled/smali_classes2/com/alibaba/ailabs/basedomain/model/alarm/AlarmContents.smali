.class public Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;
.super Ljava/lang/Object;
.source "AlarmContents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmContents"

.field public static final TYPE_ADD:I = 0x0

.field public static final TYPE_DELETE:I = 0x2

.field public static final TYPE_FULL_SYNC:I = 0x3

.field public static final TYPE_UNKOWN:I = 0x2772

.field public static final TYPE_UPDATE:I = 0x1


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSyncType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->list:Ljava/util/ArrayList;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->mDataSyncType:Ljava/lang/String;

    .line 29
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "dataSyncType"

    .line 30
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->mDataSyncType:Ljava/lang/String;

    const-string v1, "dataContent"

    .line 31
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->list:Ljava/util/ArrayList;

    new-instance v3, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parse AlarmContents error, origin data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmContents"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    return-object p1
.end method

.method public getDataSyncType()I
    .locals 6

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->mDataSyncType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "fullsync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/16 v0, 0x2772

    return v0

    :cond_1
    return v3

    :cond_2
    return v4

    :cond_3
    return v5

    :cond_4
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_3
        -0x31ffc737 -> :sswitch_2
        0x178a1 -> :sswitch_1
        0x4f645daa -> :sswitch_0
    .end sparse-switch
.end method

.method public size()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataSyncType:"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->mDataSyncType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AlarmContents:"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

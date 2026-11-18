.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
.super Ljava/util/HashMap;
.source "StatisticsParam.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final KEY_ARG1:Ljava/lang/String; = "arg1"

.field public static final KEY_BRAND_NAME:Ljava/lang/String; = "brand_name"

.field public static final KEY_CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final KEY_CONTENT_NAME:Ljava/lang/String; = "content_name"

.field public static final KEY_EVENT_NAME:Ljava/lang/String; = "event_name"

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_PAGE_NAME:Ljava/lang/String; = "page_name"

.field public static final KEY_PAGE_TYPE:Ljava/lang/String; = "page_type"

.field public static final KEY_RAW_ID:Ljava/lang/String; = "raw_id"

.field public static final KEY_SOURCE:Ljava/lang/String; = "source"

.field public static final KEY_SPM:Ljava/lang/String; = "spm"

.field public static final KEY_TABLE_NAME:Ljava/lang/String; = "table_name"

.field public static final KEY_TAB_ID:Ljava/lang/String; = "tab_id"

.field public static final KEY_URI:Ljava/lang/String; = "URI"


# instance fields
.field private eventName:Ljava/lang/String;

.field private pageName:Ljava/lang/String;

.field private spmCnt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xe

    .line 52
    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->pageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 71
    invoke-static {p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/UtCommon;->getCommon(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->putAll(Ljava/util/Map;)V

    .line 72
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->spmCnt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->pageName:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->spmCnt:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->eventName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->pageName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->spmCnt:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->eventName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 60
    invoke-static {p1, p4}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/UtCommon;->getCommon(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getArg1()Ljava/lang/String;
    .locals 1

    const-string v0, "arg1"

    .line 44
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpmCnt()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->spmCnt:Ljava/lang/String;

    return-object v0
.end method

.method public withArg1(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "arg1"

    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withBrandName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "brand_name"

    .line 96
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withContentID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "content_id"

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withContentName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "content_name"

    .line 121
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withEventName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "event_name"

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withExtMap(Ljava/util/Map;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public withFrom(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "from"

    .line 101
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withPageName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "page_name"

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withPageType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "page_type"

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withRawId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "raw_id"

    .line 136
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withSource(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "source"

    .line 131
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withSpm(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "spm"

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withTabID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "tab_id"

    .line 116
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "table_name"

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withURI(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;
    .locals 1

    const-string v0, "URI"

    .line 106
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

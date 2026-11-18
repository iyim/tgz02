.class public final enum Lcom/uc/base/net/metrics/HttpConnectionMetricsType;
.super Ljava/lang/Enum;
.source "HttpConnectionMetricsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uc/base/net/metrics/HttpConnectionMetricsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_AFTER_DECOMPRESS_BYTES:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_CONNECTED_DNS_SOURCE:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_CONNECTION_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_CONNECT_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_DECOMPRESS_ALG:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_DNS_PARSE_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_LINKUP_ERRORCODE:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_LINKUP_STATUS:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_LINKUP_URL:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_RECEIVED_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_REMOTE_ADDRESS:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_REMOTE_PORT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_REQUEST_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_RESPONSE_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_RTT_START_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_RTT_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_SENT_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_USERVER_MASTER_URL:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

.field public static final enum METRICS_TYPE_ZSTD_DICT_ID:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v1, 0x0

    const-string v2, "METRICS_TYPE_SENT_BYTES_COUNT"

    invoke-direct {v0, v2, v1}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_SENT_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 11
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v2, 0x1

    const-string v3, "METRICS_TYPE_RECEIVED_BYTES_COUNT"

    invoke-direct {v0, v3, v2}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RECEIVED_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 15
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v3, 0x2

    const-string v4, "METRICS_TYPE_REQUEST_COUNT"

    invoke-direct {v0, v4, v3}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REQUEST_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 19
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v4, 0x3

    const-string v5, "METRICS_TYPE_RESPONSE_COUNT"

    invoke-direct {v0, v5, v4}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RESPONSE_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 23
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v5, 0x4

    const-string v6, "METRICS_TYPE_REMOTE_ADDRESS"

    invoke-direct {v0, v6, v5}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REMOTE_ADDRESS:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 27
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v6, 0x5

    const-string v7, "METRICS_TYPE_REMOTE_PORT"

    invoke-direct {v0, v7, v6}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REMOTE_PORT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 31
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v7, 0x6

    const-string v8, "METRICS_TYPE_DNS_PARSE_TIME"

    invoke-direct {v0, v8, v7}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_DNS_PARSE_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 35
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/4 v8, 0x7

    const-string v9, "METRICS_TYPE_CONNECTION_TIME"

    invoke-direct {v0, v9, v8}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_CONNECTION_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 39
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v9, 0x8

    const-string v10, "METRICS_TYPE_RTT_TIME"

    invoke-direct {v0, v10, v9}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RTT_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 43
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v10, 0x9

    const-string v11, "METRICS_TYPE_RTT_START_TIME"

    invoke-direct {v0, v11, v10}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RTT_START_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 45
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v11, 0xa

    const-string v12, "METRICS_TYPE_ZSTD_DICT_ID"

    invoke-direct {v0, v12, v11}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_ZSTD_DICT_ID:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 47
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v12, 0xb

    const-string v13, "METRICS_TYPE_AFTER_DECOMPRESS_BYTES"

    invoke-direct {v0, v13, v12}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_AFTER_DECOMPRESS_BYTES:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 49
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v13, 0xc

    const-string v14, "METRICS_TYPE_DECOMPRESS_ALG"

    invoke-direct {v0, v14, v13}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_DECOMPRESS_ALG:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 54
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v14, 0xd

    const-string v15, "METRICS_TYPE_CONNECT_COUNT"

    invoke-direct {v0, v15, v14}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_CONNECT_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 59
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v15, 0xe

    const-string v14, "METRICS_TYPE_CONNECTED_DNS_SOURCE"

    invoke-direct {v0, v14, v15}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_CONNECTED_DNS_SOURCE:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 64
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const-string v14, "METRICS_TYPE_LINKUP_STATUS"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_LINKUP_STATUS:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 69
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const-string v14, "METRICS_TYPE_LINKUP_ERRORCODE"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_LINKUP_ERRORCODE:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 71
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const-string v14, "METRICS_TYPE_USERVER_MASTER_URL"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_USERVER_MASTER_URL:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    .line 73
    new-instance v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const-string v14, "METRICS_TYPE_LINKUP_URL"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_LINKUP_URL:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v0, 0x13

    .line 3
    new-array v0, v0, [Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    sget-object v14, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_SENT_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RECEIVED_BYTES_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REQUEST_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RESPONSE_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REMOTE_ADDRESS:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_REMOTE_PORT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_DNS_PARSE_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_CONNECTION_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RTT_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_RTT_START_TIME:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_ZSTD_DICT_ID:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_AFTER_DECOMPRESS_BYTES:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_DECOMPRESS_ALG:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_CONNECT_COUNT:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_CONNECTED_DNS_SOURCE:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_LINKUP_STATUS:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_LINKUP_ERRORCODE:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_USERVER_MASTER_URL:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_LINKUP_URL:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->$VALUES:[Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static fromInteger(I)Lcom/uc/base/net/metrics/HttpConnectionMetricsType;
    .locals 1

    if-ltz p0, :cond_0

    .line 80
    invoke-static {}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->values()[Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 81
    invoke-static {}, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->values()[Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uc/base/net/metrics/HttpConnectionMetricsType;
    .locals 1

    .line 3
    const-class v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    return-object p0
.end method

.method public static values()[Lcom/uc/base/net/metrics/HttpConnectionMetricsType;
    .locals 1

    .line 3
    sget-object v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->$VALUES:[Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-virtual {v0}, [Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    return-object v0
.end method

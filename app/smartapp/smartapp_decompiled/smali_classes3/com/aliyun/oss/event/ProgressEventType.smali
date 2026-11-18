.class public final enum Lcom/aliyun/oss/event/ProgressEventType;
.super Ljava/lang/Enum;
.source "ProgressEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/oss/event/ProgressEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum REQUEST_BYTE_TRANSFER_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum REQUEST_CONTENT_LENGTH_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum RESPONSE_BYTE_TRANSFER_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum RESPONSE_CONTENT_LENGTH_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum TRANSFER_CANCELED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum TRANSFER_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum TRANSFER_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum TRANSFER_PART_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum TRANSFER_PART_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum TRANSFER_PART_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum TRANSFER_PREPARING_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

.field public static final enum TRANSFER_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 27
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/4 v1, 0x0

    const-string v2, "REQUEST_CONTENT_LENGTH_EVENT"

    invoke-direct {v0, v2, v1}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->REQUEST_CONTENT_LENGTH_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 32
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/4 v2, 0x1

    const-string v3, "RESPONSE_CONTENT_LENGTH_EVENT"

    invoke-direct {v0, v3, v2}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->RESPONSE_CONTENT_LENGTH_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 37
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/4 v3, 0x2

    const-string v4, "REQUEST_BYTE_TRANSFER_EVENT"

    invoke-direct {v0, v4, v3}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->REQUEST_BYTE_TRANSFER_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 42
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/4 v4, 0x3

    const-string v5, "RESPONSE_BYTE_TRANSFER_EVENT"

    invoke-direct {v0, v5, v4}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->RESPONSE_BYTE_TRANSFER_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 47
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/4 v5, 0x4

    const-string v6, "TRANSFER_PREPARING_EVENT"

    invoke-direct {v0, v6, v5}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PREPARING_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 48
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/4 v6, 0x5

    const-string v7, "TRANSFER_STARTED_EVENT"

    invoke-direct {v0, v7, v6}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 49
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/4 v7, 0x6

    const-string v8, "TRANSFER_COMPLETED_EVENT"

    invoke-direct {v0, v8, v7}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 50
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/4 v8, 0x7

    const-string v9, "TRANSFER_FAILED_EVENT"

    invoke-direct {v0, v9, v8}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 51
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/16 v9, 0x8

    const-string v10, "TRANSFER_CANCELED_EVENT"

    invoke-direct {v0, v10, v9}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_CANCELED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 52
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/16 v10, 0x9

    const-string v11, "TRANSFER_PART_STARTED_EVENT"

    invoke-direct {v0, v11, v10}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 53
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/16 v11, 0xa

    const-string v12, "TRANSFER_PART_COMPLETED_EVENT"

    invoke-direct {v0, v12, v11}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    .line 54
    new-instance v0, Lcom/aliyun/oss/event/ProgressEventType;

    const/16 v12, 0xb

    const-string v13, "TRANSFER_PART_FAILED_EVENT"

    invoke-direct {v0, v13, v12}, Lcom/aliyun/oss/event/ProgressEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    const/16 v0, 0xc

    .line 22
    new-array v0, v0, [Lcom/aliyun/oss/event/ProgressEventType;

    sget-object v13, Lcom/aliyun/oss/event/ProgressEventType;->REQUEST_CONTENT_LENGTH_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->RESPONSE_CONTENT_LENGTH_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->REQUEST_BYTE_TRANSFER_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->RESPONSE_BYTE_TRANSFER_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PREPARING_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_CANCELED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/aliyun/oss/event/ProgressEventType;->$VALUES:[Lcom/aliyun/oss/event/ProgressEventType;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/oss/event/ProgressEventType;
    .locals 1

    .line 22
    const-class v0, Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/oss/event/ProgressEventType;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/oss/event/ProgressEventType;
    .locals 1

    .line 22
    sget-object v0, Lcom/aliyun/oss/event/ProgressEventType;->$VALUES:[Lcom/aliyun/oss/event/ProgressEventType;

    invoke-virtual {v0}, [Lcom/aliyun/oss/event/ProgressEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/oss/event/ProgressEventType;

    return-object v0
.end method

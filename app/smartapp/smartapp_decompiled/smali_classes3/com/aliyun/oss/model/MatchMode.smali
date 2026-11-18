.class public final enum Lcom/aliyun/oss/model/MatchMode;
.super Ljava/lang/Enum;
.source "MatchMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/oss/model/MatchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/oss/model/MatchMode;

.field public static final enum Exact:Lcom/aliyun/oss/model/MatchMode;

.field public static final enum Range:Lcom/aliyun/oss/model/MatchMode;

.field public static final enum StartWith:Lcom/aliyun/oss/model/MatchMode;

.field public static final enum Unknown:Lcom/aliyun/oss/model/MatchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/aliyun/oss/model/MatchMode;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1}, Lcom/aliyun/oss/model/MatchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/model/MatchMode;->Unknown:Lcom/aliyun/oss/model/MatchMode;

    .line 27
    new-instance v0, Lcom/aliyun/oss/model/MatchMode;

    const/4 v2, 0x1

    const-string v3, "Exact"

    invoke-direct {v0, v3, v2}, Lcom/aliyun/oss/model/MatchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/model/MatchMode;->Exact:Lcom/aliyun/oss/model/MatchMode;

    .line 28
    new-instance v0, Lcom/aliyun/oss/model/MatchMode;

    const/4 v3, 0x2

    const-string v4, "StartWith"

    invoke-direct {v0, v4, v3}, Lcom/aliyun/oss/model/MatchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/model/MatchMode;->StartWith:Lcom/aliyun/oss/model/MatchMode;

    .line 29
    new-instance v0, Lcom/aliyun/oss/model/MatchMode;

    const/4 v4, 0x3

    const-string v5, "Range"

    invoke-direct {v0, v5, v4}, Lcom/aliyun/oss/model/MatchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/model/MatchMode;->Range:Lcom/aliyun/oss/model/MatchMode;

    const/4 v0, 0x4

    .line 25
    new-array v0, v0, [Lcom/aliyun/oss/model/MatchMode;

    sget-object v5, Lcom/aliyun/oss/model/MatchMode;->Unknown:Lcom/aliyun/oss/model/MatchMode;

    aput-object v5, v0, v1

    sget-object v1, Lcom/aliyun/oss/model/MatchMode;->Exact:Lcom/aliyun/oss/model/MatchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/oss/model/MatchMode;->StartWith:Lcom/aliyun/oss/model/MatchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/oss/model/MatchMode;->Range:Lcom/aliyun/oss/model/MatchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aliyun/oss/model/MatchMode;->$VALUES:[Lcom/aliyun/oss/model/MatchMode;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/oss/model/MatchMode;
    .locals 1

    .line 25
    const-class v0, Lcom/aliyun/oss/model/MatchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/oss/model/MatchMode;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/oss/model/MatchMode;
    .locals 1

    .line 25
    sget-object v0, Lcom/aliyun/oss/model/MatchMode;->$VALUES:[Lcom/aliyun/oss/model/MatchMode;

    invoke-virtual {v0}, [Lcom/aliyun/oss/model/MatchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/oss/model/MatchMode;

    return-object v0
.end method

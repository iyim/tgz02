.class public final enum Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;
.super Ljava/lang/Enum;
.source "ServiceStyleV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

.field public static final enum GENIE_MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

.field public static final enum MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

.field public static final enum REST:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    const/4 v1, 0x0

    const-string v2, "MTOP"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    new-instance v0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    const/4 v2, 0x1

    const-string v3, "REST"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->REST:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    new-instance v0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    const/4 v3, 0x2

    const-string v4, "GENIE_MTOP"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->GENIE_MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    sget-object v4, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->REST:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->GENIE_MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->$VALUES:[Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;
    .locals 1

    .line 7
    const-class v0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;
    .locals 1

    .line 7
    sget-object v0, Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->$VALUES:[Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/tg/network/ServiceStyleV2;

    return-object v0
.end method

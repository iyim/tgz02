.class public final enum Lcom/taobao/phenix/decode/DecodeException$DecodedError;
.super Ljava/lang/Enum;
.source "DecodeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/phenix/decode/DecodeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecodedError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/phenix/decode/DecodeException$DecodedError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum EMPTY_BYTES_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum OOM_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum SUCCESS:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum UNAVAILABLE_INPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum UNAVAILABLE_OUTPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum UNKNOWN_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum UNLINK_SO_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field public static final enum WEBP_FORMAT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 6
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->SUCCESS:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 8
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const/4 v2, 0x1

    const-string v3, "OOM_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->OOM_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 10
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const/4 v3, 0x2

    const-string v4, "UNAVAILABLE_INPUT_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_INPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 12
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const/4 v4, 0x3

    const-string v5, "UNAVAILABLE_OUTPUT_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_OUTPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 14
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const/4 v5, 0x4

    const-string v6, "EMPTY_BYTES_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->EMPTY_BYTES_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 16
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const/4 v6, 0x5

    const-string v7, "UNLINK_SO_ERROR"

    invoke-direct {v0, v7, v6}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNLINK_SO_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 18
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const/4 v7, 0x6

    const-string v8, "UNKNOWN_ERROR"

    invoke-direct {v0, v8, v7}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNKNOWN_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 20
    new-instance v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const/4 v8, 0x7

    const-string v9, "WEBP_FORMAT_ERROR"

    invoke-direct {v0, v9, v8}, Lcom/taobao/phenix/decode/DecodeException$DecodedError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->WEBP_FORMAT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    const/16 v0, 0x8

    .line 4
    new-array v0, v0, [Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    sget-object v9, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->SUCCESS:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v9, v0, v1

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->OOM_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_INPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_OUTPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->EMPTY_BYTES_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNLINK_SO_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNKNOWN_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->WEBP_FORMAT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    aput-object v1, v0, v8

    sput-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->$VALUES:[Lcom/taobao/phenix/decode/DecodeException$DecodedError;

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

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/phenix/decode/DecodeException$DecodedError;
    .locals 1

    .line 4
    const-class v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    return-object p0
.end method

.method public static values()[Lcom/taobao/phenix/decode/DecodeException$DecodedError;
    .locals 1

    .line 4
    sget-object v0, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->$VALUES:[Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-virtual {v0}, [Lcom/taobao/phenix/decode/DecodeException$DecodedError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    return-object v0
.end method

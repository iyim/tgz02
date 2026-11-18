.class final enum Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;
.super Ljava/lang/Enum;
.source "UploadDataStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/UploadDataStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UserCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

.field public static final enum GET_LENGTH:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

.field public static final enum NOT_IN_CALLBACK:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

.field public static final enum READ:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

.field public static final enum REWIND:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    const/4 v1, 0x0

    const-string v2, "READ"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->READ:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    .line 61
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    const/4 v2, 0x1

    const-string v3, "REWIND"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->REWIND:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    .line 62
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    const/4 v3, 0x2

    const-string v4, "GET_LENGTH"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->GET_LENGTH:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    .line 63
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    const/4 v4, 0x3

    const-string v5, "NOT_IN_CALLBACK"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    const/4 v0, 0x4

    .line 59
    new-array v0, v0, [Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    sget-object v5, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->READ:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    aput-object v5, v0, v1

    sget-object v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->REWIND:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->GET_LENGTH:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->$VALUES:[Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

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

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;
    .locals 1

    .line 59
    const-class v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;
    .locals 1

    .line 59
    sget-object v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->$VALUES:[Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    invoke-virtual {v0}, [Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    return-object v0
.end method

.class public final enum Lcom/aliyun/oss/model/Callback$CalbackBodyType;
.super Ljava/lang/Enum;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/model/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CalbackBodyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/oss/model/Callback$CalbackBodyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/oss/model/Callback$CalbackBodyType;

.field public static final enum JSON:Lcom/aliyun/oss/model/Callback$CalbackBodyType;

.field public static final enum URL:Lcom/aliyun/oss/model/Callback$CalbackBodyType;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "URL"

    invoke-direct {v0, v3, v1, v2}, Lcom/aliyun/oss/model/Callback$CalbackBodyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/oss/model/Callback$CalbackBodyType;->URL:Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    new-instance v0, Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    const/4 v3, 0x2

    const-string v4, "JSON"

    invoke-direct {v0, v4, v2, v3}, Lcom/aliyun/oss/model/Callback$CalbackBodyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/oss/model/Callback$CalbackBodyType;->JSON:Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    .line 35
    new-array v0, v3, [Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    sget-object v3, Lcom/aliyun/oss/model/Callback$CalbackBodyType;->URL:Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/aliyun/oss/model/Callback$CalbackBodyType;->JSON:Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/aliyun/oss/model/Callback$CalbackBodyType;->$VALUES:[Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/aliyun/oss/model/Callback$CalbackBodyType;->nCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/oss/model/Callback$CalbackBodyType;
    .locals 1

    .line 35
    const-class v0, Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/oss/model/Callback$CalbackBodyType;
    .locals 1

    .line 35
    sget-object v0, Lcom/aliyun/oss/model/Callback$CalbackBodyType;->$VALUES:[Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    invoke-virtual {v0}, [Lcom/aliyun/oss/model/Callback$CalbackBodyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 46
    iget v0, p0, Lcom/aliyun/oss/model/Callback$CalbackBodyType;->nCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

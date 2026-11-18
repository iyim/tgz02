.class public final enum Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;
.super Ljava/lang/Enum;
.source "AliXSkuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sku/data/AliXSkuAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

.field public static final enum FINISHED:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

.field public static final enum PENDING:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

.field public static final enum RUNNING:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 277
    new-instance v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->PENDING:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    .line 281
    new-instance v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->RUNNING:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    .line 285
    new-instance v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->FINISHED:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    const/4 v0, 0x3

    .line 273
    new-array v0, v0, [Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    sget-object v4, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->PENDING:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    aput-object v4, v0, v1

    sget-object v1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->RUNNING:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->FINISHED:Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->$VALUES:[Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

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

    .line 273
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;
    .locals 1

    .line 273
    const-class v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    return-object p0
.end method

.method public static values()[Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;
    .locals 1

    .line 273
    sget-object v0, Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->$VALUES:[Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/android/sku/data/AliXSkuAsyncTask$Status;

    return-object v0
.end method

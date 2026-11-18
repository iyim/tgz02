.class public final enum Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;
.super Ljava/lang/Enum;
.source "DTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/tempate/DTemplateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

.field public static final enum STRATEGY_ALLOW_VERSION_DEGRADE:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

.field public static final enum STRATEGY_DEFAULT:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 293
    new-instance v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    const/4 v1, 0x0

    const-string v2, "STRATEGY_DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->STRATEGY_DEFAULT:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    new-instance v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    const/4 v2, 0x1

    const-string v3, "STRATEGY_ALLOW_VERSION_DEGRADE"

    invoke-direct {v0, v3, v2}, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->STRATEGY_ALLOW_VERSION_DEGRADE:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    const/4 v0, 0x2

    .line 292
    new-array v0, v0, [Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    sget-object v3, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->STRATEGY_DEFAULT:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    aput-object v3, v0, v1

    sget-object v1, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->STRATEGY_ALLOW_VERSION_DEGRADE:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->$VALUES:[Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

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

    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;
    .locals 1

    .line 292
    const-class v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    return-object p0
.end method

.method public static values()[Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;
    .locals 1

    .line 292
    sget-object v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->$VALUES:[Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    invoke-virtual {v0}, [Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    return-object v0
.end method

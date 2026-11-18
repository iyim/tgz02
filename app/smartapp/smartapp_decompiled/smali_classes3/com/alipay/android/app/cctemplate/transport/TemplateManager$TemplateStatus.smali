.class public final enum Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;
.super Ljava/lang/Enum;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/cctemplate/transport/TemplateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TemplateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

.field public static final enum ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

.field public static final enum FORCE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

.field public static final enum UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;


# instance fields
.field public mFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    const/4 v1, 0x0

    const-string v2, "ADD"

    const-string v3, "D"

    invoke-direct {v0, v2, v1, v3}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    new-instance v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    const/4 v2, 0x1

    const-string v3, "UPDATE"

    const-string v4, "U"

    invoke-direct {v0, v3, v2, v4}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    new-instance v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    const/4 v3, 0x2

    const-string v4, "FORCE"

    const-string v5, "F"

    invoke-direct {v0, v4, v3, v5}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    const/4 v0, 0x3

    .line 39
    new-array v0, v0, [Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v4, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->$VALUES:[Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "U"

    .line 42
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;
    .locals 1

    .line 39
    const-class v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    return-object p0
.end method

.method public static values()[Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;
    .locals 1

    .line 39
    sget-object v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->$VALUES:[Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    invoke-virtual {v0}, [Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    return-object v0
.end method

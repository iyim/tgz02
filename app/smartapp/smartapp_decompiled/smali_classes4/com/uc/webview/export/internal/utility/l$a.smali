.class final enum Lcom/uc/webview/export/internal/utility/l$a;
.super Ljava/lang/Enum;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/utility/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uc/webview/export/internal/utility/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uc/webview/export/internal/utility/l$a;

.field public static final enum b:Lcom/uc/webview/export/internal/utility/l$a;

.field public static final enum c:Lcom/uc/webview/export/internal/utility/l$a;

.field private static final synthetic d:[Lcom/uc/webview/export/internal/utility/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 189
    new-instance v0, Lcom/uc/webview/export/internal/utility/l$a;

    const/4 v1, 0x0

    const-string v2, "NOT_INITED"

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/utility/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/internal/utility/l$a;->a:Lcom/uc/webview/export/internal/utility/l$a;

    new-instance v0, Lcom/uc/webview/export/internal/utility/l$a;

    const/4 v2, 0x1

    const-string v3, "ENABLE"

    invoke-direct {v0, v3, v2}, Lcom/uc/webview/export/internal/utility/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/internal/utility/l$a;->b:Lcom/uc/webview/export/internal/utility/l$a;

    new-instance v0, Lcom/uc/webview/export/internal/utility/l$a;

    const/4 v3, 0x2

    const-string v4, "DISABLE"

    invoke-direct {v0, v4, v3}, Lcom/uc/webview/export/internal/utility/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/internal/utility/l$a;->c:Lcom/uc/webview/export/internal/utility/l$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/uc/webview/export/internal/utility/l$a;

    sget-object v4, Lcom/uc/webview/export/internal/utility/l$a;->a:Lcom/uc/webview/export/internal/utility/l$a;

    aput-object v4, v0, v1

    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->b:Lcom/uc/webview/export/internal/utility/l$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/webview/export/internal/utility/l$a;->c:Lcom/uc/webview/export/internal/utility/l$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/uc/webview/export/internal/utility/l$a;->d:[Lcom/uc/webview/export/internal/utility/l$a;

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

    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static values()[Lcom/uc/webview/export/internal/utility/l$a;
    .locals 1

    .line 189
    sget-object v0, Lcom/uc/webview/export/internal/utility/l$a;->d:[Lcom/uc/webview/export/internal/utility/l$a;

    invoke-virtual {v0}, [Lcom/uc/webview/export/internal/utility/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/internal/utility/l$a;

    return-object v0
.end method

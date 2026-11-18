.class public final enum Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NARROW_COLUMNS:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

.field public static final enum NORMAL:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

.field public static final enum SINGLE_COLUMN:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TEXT_AUTOSIZING:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

.field private static final synthetic a:[Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 59
    new-instance v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->NORMAL:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    .line 63
    new-instance v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    const/4 v2, 0x1

    const-string v3, "SINGLE_COLUMN"

    invoke-direct {v0, v3, v2}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    .line 65
    new-instance v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    const/4 v3, 0x2

    const-string v4, "NARROW_COLUMNS"

    invoke-direct {v0, v4, v3}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    .line 69
    new-instance v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    const/4 v4, 0x3

    const-string v5, "TEXT_AUTOSIZING"

    invoke-direct {v0, v5, v4}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    const/4 v0, 0x4

    .line 57
    new-array v0, v0, [Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    sget-object v5, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->NORMAL:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    aput-object v5, v0, v1

    sget-object v1, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    aput-object v1, v0, v4

    sput-object v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->a:[Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

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

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;
    .locals 1

    .line 57
    const-class v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;
    .locals 1

    .line 57
    sget-object v0, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->a:[Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0}, [Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    return-object v0
.end method

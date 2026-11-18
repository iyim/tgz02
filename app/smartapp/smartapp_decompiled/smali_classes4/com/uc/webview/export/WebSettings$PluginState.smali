.class public final enum Lcom/uc/webview/export/WebSettings$PluginState;
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
    name = "PluginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uc/webview/export/WebSettings$PluginState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OFF:Lcom/uc/webview/export/WebSettings$PluginState;

.field public static final enum ON:Lcom/uc/webview/export/WebSettings$PluginState;

.field public static final enum ON_DEMAND:Lcom/uc/webview/export/WebSettings$PluginState;

.field private static final synthetic a:[Lcom/uc/webview/export/WebSettings$PluginState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 212
    new-instance v0, Lcom/uc/webview/export/WebSettings$PluginState;

    const/4 v1, 0x0

    const-string v2, "ON"

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$PluginState;->ON:Lcom/uc/webview/export/WebSettings$PluginState;

    .line 213
    new-instance v0, Lcom/uc/webview/export/WebSettings$PluginState;

    const/4 v2, 0x1

    const-string v3, "ON_DEMAND"

    invoke-direct {v0, v3, v2}, Lcom/uc/webview/export/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$PluginState;->ON_DEMAND:Lcom/uc/webview/export/WebSettings$PluginState;

    .line 214
    new-instance v0, Lcom/uc/webview/export/WebSettings$PluginState;

    const/4 v3, 0x2

    const-string v4, "OFF"

    invoke-direct {v0, v4, v3}, Lcom/uc/webview/export/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/WebSettings$PluginState;->OFF:Lcom/uc/webview/export/WebSettings$PluginState;

    const/4 v0, 0x3

    .line 210
    new-array v0, v0, [Lcom/uc/webview/export/WebSettings$PluginState;

    sget-object v4, Lcom/uc/webview/export/WebSettings$PluginState;->ON:Lcom/uc/webview/export/WebSettings$PluginState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/uc/webview/export/WebSettings$PluginState;->ON_DEMAND:Lcom/uc/webview/export/WebSettings$PluginState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/webview/export/WebSettings$PluginState;->OFF:Lcom/uc/webview/export/WebSettings$PluginState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/uc/webview/export/WebSettings$PluginState;->a:[Lcom/uc/webview/export/WebSettings$PluginState;

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

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$PluginState;
    .locals 1

    .line 210
    const-class v0, Lcom/uc/webview/export/WebSettings$PluginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/WebSettings$PluginState;

    return-object p0
.end method

.method public static values()[Lcom/uc/webview/export/WebSettings$PluginState;
    .locals 1

    .line 210
    sget-object v0, Lcom/uc/webview/export/WebSettings$PluginState;->a:[Lcom/uc/webview/export/WebSettings$PluginState;

    invoke-virtual {v0}, [Lcom/uc/webview/export/WebSettings$PluginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/WebSettings$PluginState;

    return-object v0
.end method

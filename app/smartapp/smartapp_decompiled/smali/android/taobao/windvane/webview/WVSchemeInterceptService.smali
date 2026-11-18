.class public Landroid/taobao/windvane/webview/WVSchemeInterceptService;
.super Ljava/lang/Object;
.source "WVSchemeInterceptService.java"


# static fields
.field private static mIntercepter:Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getWVSchemeIntercepter()Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;
    .locals 1

    .line 24
    sget-object v0, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->mIntercepter:Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;

    return-object v0
.end method

.method public static registerWVURLintercepter(Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;)V
    .locals 0

    .line 20
    sput-object p0, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->mIntercepter:Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

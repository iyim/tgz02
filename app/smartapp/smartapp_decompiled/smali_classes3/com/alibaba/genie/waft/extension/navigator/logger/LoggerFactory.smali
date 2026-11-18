.class public Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoggerFactory"

.field private static sLogger:Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper; = null
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static sLoggerTag:Ljava/lang/String; = "Router"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;

    sget-object v1, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerFactory;->sLoggerTag:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/genie/waft/extension/navigator/logger/SystemLogger;

    invoke-direct {v2}, Lcom/alibaba/genie/waft/extension/navigator/logger/SystemLogger;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;-><init>(Ljava/lang/String;Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;)V

    sput-object v0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerFactory;->sLogger:Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getLogger()Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 19
    sget-object v0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerFactory;->sLogger:Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;

    return-object v0
.end method

.method public static setLogger(Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;)V
    .locals 1
    .param p0    # Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    sget-object v0, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerFactory;->sLogger:Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;

    invoke-virtual {v0, p0}, Lcom/alibaba/genie/waft/extension/navigator/logger/LoggerWrapper;->setLogger(Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;)V

    return-void
.end method

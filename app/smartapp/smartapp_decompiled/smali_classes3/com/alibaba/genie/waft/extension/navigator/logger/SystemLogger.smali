.class Lcom/alibaba/genie/waft/extension/navigator/logger/SystemLogger;
.super Ljava/lang/Object;
.source "SystemLogger.java"

# interfaces
.implements Lcom/alibaba/genie/waft/extension/navigator/api/logger/ILogger;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

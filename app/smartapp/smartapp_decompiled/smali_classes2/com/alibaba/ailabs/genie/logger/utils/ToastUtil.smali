.class public Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(I)Z
    .locals 0

    .line 8
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil;->validLength(I)Z

    move-result p0

    return p0
.end method

.method public static show(I)V
    .locals 1

    .line 38
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$3;-><init>(I)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/UIHandler;->post(Ljava/lang/Runnable;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static show(II)V
    .locals 1

    .line 47
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$4;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$4;-><init>(II)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/UIHandler;->post(Ljava/lang/Runnable;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static show(Ljava/lang/String;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/UIHandler;->post(Ljava/lang/Runnable;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static show(Ljava/lang/String;I)V
    .locals 1

    .line 28
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$2;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/ailabs/genie/logger/utils/ToastUtil$2;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/UIHandler;->post(Ljava/lang/Runnable;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static validLength(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid toast length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/logger/utils/Check;->d(ZLjava/lang/String;)V

    :cond_0
    return v0
.end method

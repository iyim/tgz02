.class public Lmtopsdk/mtop/global/init/MtopInitTaskFactory;
.super Ljava/lang/Object;
.source "MtopInitTaskFactory.java"


# static fields
.field private static final INNER_MTOP_INIT_TASK:Ljava/lang/String; = "mtopsdk.mtop.global.init.InnerMtopInitTask"

.field private static final OPEN_MTOP_INIT_TASK:Ljava/lang/String; = "mtopsdk.mtop.global.init.OpenMtopInitTask"

.field private static final PRODUCT_MTOP_INIT_TASK:Ljava/lang/String; = "mtopsdk.mtop.global.init.ProductMtopInitTask"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopInitTaskFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getMtopInitTask(Ljava/lang/String;)Lmtopsdk/mtop/global/init/IMtopInitTask;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x251e4a

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x4295636

    if-eq v1, v2, :cond_2

    const v2, 0x185958cf

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "PRODUCT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "INNER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "OPEN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    const-string p0, "mtopsdk.mtop.global.init.InnerMtopInitTask"

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    .line 37
    invoke-static {p0}, Lmtopsdk/mtop/global/init/MtopInitTaskFactory;->newInstance(Ljava/lang/String;)Lmtopsdk/mtop/global/init/IMtopInitTask;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string p0, "mtopsdk.mtop.global.init.ProductMtopInitTask"

    .line 34
    invoke-static {p0}, Lmtopsdk/mtop/global/init/MtopInitTaskFactory;->newInstance(Ljava/lang/String;)Lmtopsdk/mtop/global/init/IMtopInitTask;

    move-result-object p0

    goto :goto_1

    :cond_6
    const-string p0, "mtopsdk.mtop.global.init.OpenMtopInitTask"

    .line 31
    invoke-static {p0}, Lmtopsdk/mtop/global/init/MtopInitTaskFactory;->newInstance(Ljava/lang/String;)Lmtopsdk/mtop/global/init/IMtopInitTask;

    move-result-object p0

    goto :goto_1

    .line 28
    :cond_7
    invoke-static {p0}, Lmtopsdk/mtop/global/init/MtopInitTaskFactory;->newInstance(Ljava/lang/String;)Lmtopsdk/mtop/global/init/IMtopInitTask;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static newInstance(Ljava/lang/String;)Lmtopsdk/mtop/global/init/IMtopInitTask;
    .locals 3

    .line 47
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/global/init/IMtopInitTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reflect IMtopInitTask instance error.clazzName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mtopsdk.MtopInitTaskFactory"

    invoke-static {v0, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.class Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo$1CpuFilter;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuCount()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CpuFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo$1CpuFilter;->this$0:Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 514
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cpu[0-9]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class public final Lcom/alibaba/ailabs/genie/second/config/IPConfig;
.super Ljava/lang/Object;
.source "IPConfig.java"


# static fields
.field public static AMDC_INIT_HOST:[Ljava/lang/String;

.field public static AMDC_IPV4_ONLY:[[Ljava/lang/String;

.field public static AMDC_IPV6_ONLY:[[Ljava/lang/String;

.field public static AMDC_IP_DUAL_STACK:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "img.alicdn.com"

    const-string v1, "gw.alicdn.com"

    const-string/jumbo v2, "wwc.alicdn.com"

    const-string v3, "h-adashx.ut.taobao.com"

    const-string v4, "pages.tmall.com"

    const-string v5, "gw.alipayobjects.com"

    const-string v6, "mobilegw.alipay.com"

    const-string v7, "login.m.taobao.com"

    const-string v8, "acs.m.taobao.com"

    .line 17
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/second/config/IPConfig;->AMDC_INIT_HOST:[Ljava/lang/String;

    const/4 v0, 0x3

    .line 32
    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "2408:4001:f10::77"

    const-string v3, "2408:4001:f00::1f7"

    const-string v4, "2401:b180:7003::13e"

    const-string v5, "2401:b180:7003::14f"

    const-string v6, "2401:b180:7003::49"

    filled-new-array {v6, v5, v4, v3, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v1, v8

    const-string v7, "2401:b180:2000:20::37"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v1, v10

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v1, v11

    sput-object v1, Lcom/alibaba/ailabs/genie/second/config/IPConfig;->AMDC_IPV6_ONLY:[[Ljava/lang/String;

    .line 50
    sget-object v1, Lanet/channel/strategy/dispatch/DispatchConstants;->AMDC_SERVER_FIX_IP:[[Ljava/lang/String;

    sput-object v1, Lcom/alibaba/ailabs/genie/second/config/IPConfig;->AMDC_IPV4_ONLY:[[Ljava/lang/String;

    .line 52
    new-array v1, v0, [[Ljava/lang/String;

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    aput-object v6, v9, v8

    aput-object v5, v9, v10

    aput-object v4, v9, v11

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v2, v9, v0

    const-wide v2, 0x2f4ad91eb0L

    .line 60
    invoke-static {v2, v3}, Lanet/channel/strategy/utils/Utils;->longToIP(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v9, v2

    const-wide v2, 0x2f4ad932d3L

    .line 61
    invoke-static {v2, v3}, Lanet/channel/strategy/utils/Utils;->longToIP(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v9, v2

    aput-object v9, v1, v8

    new-array v0, v11, [Ljava/lang/String;

    aput-object v7, v0, v8

    const-wide v2, 0x18aec047e6L

    .line 66
    invoke-static {v2, v3}, Lanet/channel/strategy/utils/Utils;->longToIP(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v10

    aput-object v0, v1, v10

    new-array v0, v11, [Ljava/lang/String;

    aput-object v7, v0, v8

    .line 70
    invoke-static {v2, v3}, Lanet/channel/strategy/utils/Utils;->longToIP(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/alibaba/ailabs/genie/second/config/IPConfig;->AMDC_IP_DUAL_STACK:[[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

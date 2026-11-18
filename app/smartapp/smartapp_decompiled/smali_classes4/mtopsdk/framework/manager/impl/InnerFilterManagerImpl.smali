.class public Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;
.super Lmtopsdk/framework/manager/impl/AbstractFilterManager;
.source "InnerFilterManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 28
    invoke-direct {p0}, Lmtopsdk/framework/manager/impl/AbstractFilterManager;-><init>()V

    .line 31
    new-instance v0, Lmtopsdk/framework/filter/duplex/CheckSessionDuplexFilter;

    invoke-direct {v0}, Lmtopsdk/framework/filter/duplex/CheckSessionDuplexFilter;-><init>()V

    .line 32
    new-instance v1, Lmtopsdk/framework/filter/duplex/CheckAuthDuplexFilter;

    invoke-direct {v1}, Lmtopsdk/framework/filter/duplex/CheckAuthDuplexFilter;-><init>()V

    .line 33
    new-instance v2, Lmtopsdk/framework/filter/duplex/CacheDuplexFilter;

    invoke-direct {v2}, Lmtopsdk/framework/filter/duplex/CacheDuplexFilter;-><init>()V

    .line 34
    new-instance v3, Lmtopsdk/framework/filter/duplex/FlowLimitDuplexFilter;

    invoke-direct {v3}, Lmtopsdk/framework/filter/duplex/FlowLimitDuplexFilter;-><init>()V

    .line 35
    new-instance v4, Lmtopsdk/framework/filter/duplex/AppConfigDuplexFilter;

    invoke-direct {v4}, Lmtopsdk/framework/filter/duplex/AppConfigDuplexFilter;-><init>()V

    .line 38
    new-instance v5, Lmtopsdk/framework/filter/before/CheckRequestParamBeforeFilter;

    invoke-direct {v5}, Lmtopsdk/framework/filter/before/CheckRequestParamBeforeFilter;-><init>()V

    invoke-virtual {p0, v5}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addBefore(Lmtopsdk/framework/filter/IBeforeFilter;)V

    .line 39
    invoke-virtual {p0, v0}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addBefore(Lmtopsdk/framework/filter/IBeforeFilter;)V

    .line 40
    invoke-virtual {p0, v1}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addBefore(Lmtopsdk/framework/filter/IBeforeFilter;)V

    .line 41
    invoke-virtual {p0, v4}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addBefore(Lmtopsdk/framework/filter/IBeforeFilter;)V

    .line 42
    new-instance v5, Lmtopsdk/framework/filter/before/ProtocolParamBuilderBeforeFilter;

    new-instance v6, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;

    invoke-direct {v6}, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;-><init>()V

    invoke-direct {v5, v6}, Lmtopsdk/framework/filter/before/ProtocolParamBuilderBeforeFilter;-><init>(Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;)V

    invoke-virtual {p0, v5}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addBefore(Lmtopsdk/framework/filter/IBeforeFilter;)V

    .line 43
    new-instance v5, Lmtopsdk/framework/filter/before/NetworkConvertBeforeFilter;

    new-instance v6, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;

    invoke-direct {v6}, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;-><init>()V

    invoke-direct {v5, v6}, Lmtopsdk/framework/filter/before/NetworkConvertBeforeFilter;-><init>(Lmtopsdk/mtop/protocol/converter/INetworkConverter;)V

    invoke-virtual {p0, v5}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addBefore(Lmtopsdk/framework/filter/IBeforeFilter;)V

    .line 44
    invoke-virtual {p0, v2}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addBefore(Lmtopsdk/framework/filter/IBeforeFilter;)V

    .line 45
    invoke-virtual {p0, v3}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addBefore(Lmtopsdk/framework/filter/IBeforeFilter;)V

    .line 46
    new-instance v5, Lmtopsdk/framework/filter/before/ExecuteCallBeforeFilter;

    invoke-direct {v5}, Lmtopsdk/framework/filter/before/ExecuteCallBeforeFilter;-><init>()V

    invoke-virtual {p0, v5}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addBefore(Lmtopsdk/framework/filter/IBeforeFilter;)V

    .line 49
    new-instance v5, Lmtopsdk/framework/filter/after/NetworkErrorAfterFilter;

    invoke-direct {v5}, Lmtopsdk/framework/filter/after/NetworkErrorAfterFilter;-><init>()V

    invoke-virtual {p0, v5}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    .line 50
    invoke-virtual {p0, v4}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    .line 51
    new-instance v4, Lmtopsdk/framework/filter/after/AntiAttackAfterFilter;

    invoke-direct {v4}, Lmtopsdk/framework/filter/after/AntiAttackAfterFilter;-><init>()V

    invoke-virtual {p0, v4}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    .line 52
    invoke-virtual {p0, v3}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    .line 53
    new-instance v3, Lmtopsdk/framework/filter/after/BusinessErrorAfterFilter;

    invoke-direct {v3}, Lmtopsdk/framework/filter/after/BusinessErrorAfterFilter;-><init>()V

    invoke-virtual {p0, v3}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    .line 54
    new-instance v3, Lmtopsdk/framework/filter/after/TimeCalibrationAfterFilter;

    invoke-direct {v3}, Lmtopsdk/framework/filter/after/TimeCalibrationAfterFilter;-><init>()V

    invoke-virtual {p0, v3}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    .line 55
    invoke-virtual {p0, v0}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    .line 56
    invoke-virtual {p0, v1}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    .line 57
    new-instance v0, Lmtopsdk/framework/filter/after/ErrorCodeMappingAfterFilter;

    invoke-direct {v0}, Lmtopsdk/framework/filter/after/ErrorCodeMappingAfterFilter;-><init>()V

    invoke-virtual {p0, v0}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    .line 58
    new-instance v0, Lmtopsdk/framework/filter/after/ExecuteCallbackAfterFilter;

    invoke-direct {v0}, Lmtopsdk/framework/filter/after/ExecuteCallbackAfterFilter;-><init>()V

    invoke-virtual {p0, v0}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    .line 59
    invoke-virtual {p0, v2}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;->addAfter(Lmtopsdk/framework/filter/IAfterFilter;)V

    return-void
.end method

// Strings.prg
// Created by    : robert
// Creation Date : 1/23/2023 1:00:15 PM
// Created for   :
// WorkStation   : NYX


USING System
USING System.Collections.Generic
USING System.Text

BEGIN NAMESPACE XSharp.Settings
class DebugPropertyPagePanel
    const catGeneral := "常规" as string
    const catSpecial := "Special" as string
    const captOutputPath := "输出路径" as string
    const descOutputPath := "输出路径(允许使用宏)" as string
    const captDebugType := "生成调试信息" as string
    const descDebugType := "生成调试信息 (none, full, pdbonly, Portable, Embedded)" as string
    const captDebuggerCommand := "命令" as string
    const descDebuggerCommand := "要执行的调试命令" as string
    const captDebuggerCommandArguments := "命令参数" as string
    const descDebuggerCommandArguments := "传递给应用程序的命令行参数" as string
    const captDebuggerWorkingDirectory := "工作目录" as string
    const descDebuggerWorkingDirectory := "应用程序的工作目录。默认(包含)项目文件的目录。" as string
    const captDebuggerAttach := "Attach" as string
    const descDebuggerAttach := "Specifies whether the debugger should attempt to attach to an existing process when debugging starts." as string
    const captEnableUnmanagedDebugging := "启用非托管调试" as string
    const descEnableUnmanagedDebugging := "启用非托管调试" as string
    const captUseVSHostingProcess := "Enable the Visual Studio Hosting Process" as string
    const descUseVSHostingProcess := "Enable the Visual Studio Hosting Process" as string
end class
class DialectPropertyPagePanel
    const DialectCaption := "Dialect" as string
    const VO1Caption := "允许Init()和Axit()作为构造函数/解构器的别名" as string
    const VO2Caption := "初始化字符串" as string
    const VO3Caption := "所有实例方法都是虚拟的" as string
    const VO4Caption := "隐含数值转换" as string
    const VO5Caption := "隐含Clipper的调用惯例" as string
    const VO6Caption := "隐含指针转换" as string
    const VO7Caption := "隐含casts和conversions转换" as string
    const VO8Caption := "兼容的预处理器" as string
    const VO9Caption := "处理不正确或缺失的返回声明" as string
    const VO10Caption := "兼容IIF行为" as string
    const VO11Caption := "兼容的数字转换" as string
    const VO12Caption := "Clipper兼容整数除法" as string
    const VO13Caption := "兼容的字符串比较" as string
    const VO14Caption := "使用FLOAT文字" as string
    const VO15Caption := "将缺失的类型视为正常" as string
    const VO16Caption := "生成Clipper构造函数" as string
    const VO17Caption := "兼容 BEGIN SEQUENCE .. END SEQUENCE " as string
    const XPP1Caption := "从Abstract类继承" as string
    const FOX1Caption := "从Custom类继承" as string
    const FOX2Caption := "兼容阵列处理" as string
    const VO1Description := "允许Init()和Axit()作为构造函数/解构器的别名(/vo1)" as string
    const VO2Description := e"将字符串初始化为空字符串(String.Empty)(/vo2)。请注意在.NET中 NULL_STRING 与长度为0的字符串不同。\r启用此选项后，将初始化本地字符串变量，而不管“语言”页面中的“初始化本地变量”设置如何。" as string
    const VO3Description := "默认情况下，将虚拟修饰符添加到所有方法中(这是正常的Visual Objects行为)(/vo3)" as string
    const VO4Description := "数值之间的隐含转换，例如将DWORD分配给INT或将FLOAT分配给INT时(/vo4)" as string
    const VO5Description := e"没有参数和调用约定的方法被编译为Clipper调用约定(/vo5). \n请注意，如果没有此开关，所有没有参数的方法都将被视为STRICT。\r具有非类型化参数的方法总是被视为CLIPPER调用约定。" as string
    const VO6Description := "类型化函数PTR和PTR之间的隐含转换(/vo6)" as string
    const VO7Description := "隐含casts和Conversions转换(/vo7)" as string
    const VO8Description := "使预处理器不区分大小写，并控制#ifdef如何检查#定义(/vo8)" as string
    const VO9Description := "允许缺少返回语句或允许返回值不正确的返回语句(/vo9)" as string
    const VO10Description := "兼容IIF行为，允许TRUE和FALSE表达式中有不同类型的返回值(/vo10)" as string
    const VO11Description := "兼容的算术转换(/vo11)" as string
    const VO12Description := "兼容整数除法，整数除法可能返回浮点数(/vo12)" as string
    const VO13Description := "兼容字符串比较，尊重SetExact和排序表(/vo13)" as string
    const VO14Description := "将浮点文字存储为FLOAT，而不是System.Double(REAL8)(/vo14)" as string
    const VO15Description := e"局部变量、实例变量和参数的缺失类型子句被视为USUAL（VO和Vulcan方言）。\rVO方言默认为TRUE，其他方言默认为FALSE。\r我们强烈建议将其设置为FALSE，因为这将帮助您发现代码中的问题和非最佳代码。\r如果必须使用USUAL类型，我们建议将变量和参数显式声明为USUAL(/vo15)" as string
    const VO16Description := "为没有构造函数的类自动创建clipper调用约定构造函数，其中父类具有clipper调用惯例构造函数。(/vo16)" as string
    const VO17Description := "生成代码以完全实现VO兼容BEGIN SEQUENCE .. END SEQUENCE。 编译器生成对运行时函数_SequenceError和_SequenceRecover的调用，您可以在自己的代码中重写这些函数。(/vo17)" as string
    const XPP1Description := "All classes without parent class inherit from the XPP Abstract class.(/xpp1)" as string
    const FOX1Description := "All classes are assumed to inherit from the Custom class. This also affects the way in which properties are processed by the compiler.(/fox1)" as string
    const FOX2Description := "FoxPro兼容的数组处理(允许括号数组并为数组分配一个值以填充所有元素)。警告: 允许括号数组可能会减慢程序的执行速度！(/fox2)" as string
    const CatCompatibility := "所有方言" as string
    const CatNotCore := "非Core方言" as string
    const XPPCompatibility := "Xbase++兼容性" as string
    const FOXCompatibility := "Visual FoxPro兼容性" as string
end class

class GeneralPropertyPagePanel
    const DefaultValue := "<default>" as string
    const captVulcanCompatibleResouces := "Vulcan兼容管理资源" as string
    const descVulcanCompatibleResouces := "使用Vulcan兼容托管资源（当为“True”时，资源文件包含在程序集中，没有命名空间前缀。当为“False”时，与其他.Net语言（如C#）一样，资源文件以应用程序的命名空间作为前缀）" as string
    const captDialect := "Dialect" as string
    const descDialect := "选择编译此项目时要使用的编译器方言。更改方言也可能更改“语言”页面上的“允许命名参数”设置。" as string
    const captWin32Manifest := "禁止默认Win32清单" as string
    const descWin32Manifest := "禁止默认Win32清单。如果禁止默认清单，则必须提供自己的Win32清单。(/nowin32manifest)" as string
    const catResources := "Resources" as string
    const captUseNativeVersion := "选择本版本资源而不是过度管理的资源" as string
    const descUseNativeVersion := "When your application includes a native version resource, use this native version resource and do not generate a resource based on the global assembly properties such as AssemblyTitle, AssemblyVersion etc (/usenativeversion)" as string
    const captPreferNative := "选择本版本资源信息而不是过度版本的信息" as string
    const descPreferNative := "更喜欢本版本资源而不是过度版本信息，默认行为是基于各种[Assembly..]属性创建版本资源。" as string
    const captBindingRedirects := "自动生成绑定重定向" as string
    const descBindingRedirects := "编译应用程序时，绑定重定向将添加到输出配置(app.config)文件中。" as string
    const captStartup := "启动对象:" as string
    const captOutputType := "输出类型:" as string
    const captTargetFramework := "目标框架:" as string
    const captAppName := "应用程序名称" as string
    const captNamespace := "默认命名空间:" as string
    const descNamespace := "指定添加到项目中的文件的基本命名空间。" as string
    const descAssembly := "指定将保存程序集清单的输出文件的名称。" as string
    const descFramework := "指定应用程序的.NET目标版本。根据版本选项将安装.NET在您的计算机上。" as string
    const descOutputType := "指定要生成的应用程序的类型。" as string
    const descStartup := "定义加载应用程序时要调用的入口点。通常，这设置为应用程序中的主窗体或应用程序启动时应运行的“Start”函数。类库不定义入口点。" as string
    const descIcon := "设置要用作程序图标的.ico文件。请注意，您必须指定图标和清单或资源文件。" as string
    const captIcon := "应用程序图标:" as string
end class

class LanguagePropertyPagePanel
    const LanguageCaption := "Language" as string
    const CMDCaption := "额外命令行选项" as string
    const AZCaption := "使用从零开始的数组" as string
    const CSCaption := "区分大小写" as string
    const INSCaption := "启用隐含命名空间查找" as string
    const LBCaption := "允许延迟绑定" as string
    const NamedArgCaption := "允许命名参数" as string
    const NSCaption := "使用默认命名空间为类添加前缀" as string
    const OVFCaption := "溢出异常" as string
    const UnsafeCaption := "允许不安全代码" as string
    const MemVarCaption := "启用Memvar支持" as string
    const UndeclaredCaption := "启用支持未声明变量" as string
    const InitLocalsCaption := "初始化局部变量" as string
    const enforceSelfCaption := "强制 SELF" as string
    const EnforceOverrideCaption := "强制 VIRTUAL / OVERRIDE" as string
    const allowDotCaption := "允许DOT作为示例成员" as string
    const allowOldStyleCaption := "允许旧式作业" as string
    const CSDescription := "启用/禁用区分大小写 (/cs)" as string
    const AZDescription := "使用从零开始的数组 (/az)" as string
    const INSDescription := "启用对具有隐含命名空间属性的程序集中定义的类的隐含查找(/ins)" as string
    const LBDescription := "允许对OBJECT和USUAL类型的表达式进行属性访问和方法调用 (/lb)" as string
    const NamedArgDescription := "允许命名参数（Core方言默认为TRUE，其他方言默认为FALSE）。更改方言也可能自动更改此设置。 (/namedargs)" as string
    const NSDescription := "为所有没有命名空间前缀且不在开始命名空间中的类添加前缀...使用程序集的命名空间结束命名空间块 (/ns:<Namespace>)" as string
    const OVFDescription := "检查数值表达式的Overflow和Underflow，如CHECKED关键字。(/ovf)" as string
    const UnsafeDescription := "允许此程序集中存在不安全代码(/unsafe)" as string
    const InitLocalsDescription := "无需初始化表达式即可自动初始化局部变量。请注意，对于字符串类型的本地变量，初始值将取决于“方言”页面中的“初始化字符串”设置。(/initlocals)" as string
    const NoStdDefCaption := "禁止标准头文件" as string
    const NoStdDefDescription := "禁止在每个文件中包含标准头文件(XSharpDefs.xh)(/nostddef)" as string
    const INCCaption := "其他包含路径" as string
    const INCDescription := "预处理器的其他包含路径(还会查看使用包含环境变量设置的文件夹)(/i)" as string
    const StdDefCaption := "备用标准头文件" as string
    const StdDefDescription := "替代标准头文件名称(替代XSharpDfs.xh)  (/stddefs)" as string
    const MemVarDescription := e"启用对内存变量（MEMVAR、PUBLIC、PRIVATE和PARAMETERS）的支持。(/memvar)\r请注意，Core和Vulcan方言不支持此功能" as string
    const UndeclaredDescription := e"启用对未声明变量的支持（这些变量被解析为MEMVAR）。(/undeclared)\r请注意，需要启用/memvar。" as string
    const EnforceSelfDescription := "在类的成员中强制使用SELF。这有助于防止代码中的歧义(/eforceself)" as string
    const EnforceOverrideDescription := "对类的成员强制使用VIRTUAL和OVERRIDE。(/enforceoverride)" as string
    const allowDotDescription := "允许DOT操作员访问实例字段、属性和方法(/allowdot)" as string
    const allowOldStyleDescription := "允许使用“=”运算符进行旧式赋值。FoxPro方言的默认值为TRUE。(/allowoldstyleassignments)" as string
    const ModernSyntaxDescription := "禁止旧式注释和其他遗留语言功能。(/modernsyntax)" as string
    const ModernSyntaxCaption := "现代语法" as string
    const CatGeneral := "常规" as string
    const CatNamespaces := "命名空间" as string
    const CatPreprocessor := "预处理器" as string
    const CatMemVars := "内存变量" as string
end class
class BuildPropertyPagePanel
    const catSigning := "Code Signing" as string
    const catMisc := "Miscellaneous" as string
    const catWarnings := "Warnings" as string
    const catOutput := e"\t输出" as string
    const CatPreprocessor := "预处理器" as string
    const catXML := "XML Output" as string
    const captOutputPath := "输出路径" as string
    const descOutputPath := "输出路径(允许使用宏)" as string
    const captIntermediateOutputPath := "中间输出路径" as string
    const descIntermediateOutputPath := "中间输出路径(允许使用宏)" as string
    const captDocumentationFile := "生成XML文档注释文件" as string
    const descDocumentationFile := "生成XML文档注释文件" as string
    const captDocumentationFileName := "XML doc comments file name" as string
    const descDocumentationFileName := "XML doc comments file name" as string
    const captOptimize := "优化" as string
    const descOptimize := "编译器应该优化输出吗? (/optimize)" as string
    const captUseSharedCompilation := "使用共享编译器" as string
    const descUseSharedCompilation := "是否应使用共享编译器编译项目？(快速，但会忽略一些编译器错误) (/shared)" as string
    const captDisabledWarnings := "禁止特定警告" as string
    const descDisabledWarnings := "指定要禁止的警告列表(/nowarn)" as string
    const captWarningLevel := "警告级别" as string
    const descWarningLevel := "警告级别设置为0到4之间的值(/warn)" as string
    const captTreatWarningsAsErrors := "Warnings As Errors" as string
    const descTreatWarningsAsErrors := "Treat warnings as errors (/warnaserror)" as string
    const captSignAssembly := "在输出组件上签名" as string
    const descSignAssembly := "签署程序集(/keyfile)" as string
    const captDelaySign := "仅延迟签名" as string
    const descDelaySign := "延迟签名(/delaysign)" as string
    const captAssemblyOriginatorKeyFile := "代码签名密钥文件" as string
    const descAssemblyOriginatorKeyFile := "选择一个代码签名密钥文件(/keyfile)" as string
    const captRegisterForComInterop := "注册COM Interop" as string
    const descRegisterForComInterop := "注册COM Interop的输出程序集(需要管理员权限)" as string
    const PPOCaption := "生成预处理器输出" as string
    const PPODescription := "将预处理器的输出保存到.ppo文件(/ppo)" as string
    const CmdLineCaption := "额外命令行选项" as string
    const CmdLineDescription := "用户定义的命令行选项" as string
    const DefCaption := "为预处理器定义" as string
    const DefDescription := "为预处理器定义(/define)" as string
    const captPrefer32Bit := e"\t首选32位" as string
    const descPrefer32Bit := "选择任何CPU平台时，首选32位。(/platform)" as string
    const SuppressRCWarningsCaption := "禁止资源编译器警告" as string
    const SuppressRCWarningsDescription := "禁止本机资源编译器关于重复定义的警告 (RC4005)" as string
    const captPlatFormTarget := "平台目标" as string
    const descPlatFormTarget := "译此项目时选择平台目标。可以是任何CPU(AnyCPU)、X86、x64、Arm或安腾(Itanium) (/platform)" as string
    const defaultOutputPath := "bin\\$(Configuration)\\" as string
    const defaultIntermediatePath := "obj\\$(Configuration)\\" as string
    const descSpecificWarnings := "特定警告视为错误" as string
end class


END NAMESPACE // XSharpModel.Constants
